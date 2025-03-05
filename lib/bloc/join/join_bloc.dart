import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/api/join_api.dart';
import 'package:time_todo/bloc/join/join_event.dart';
import 'package:time_todo/bloc/join/join_state.dart';
import 'package:time_todo/dio/api_dio_client.dart';

class JoinBloc extends Bloc<JoinEvent, JoinState> {
  late JoinApi _api;

  JoinBloc() : super(JoinState()) {
    _api = JoinApi(apiDioClient());
    // 약관 동의 [ 전체 / 서비스 / 개인정보 / 마켓팅 순 ]
    on<JoinEvent>((event, emit) async {
      await event.when(allAgreeTermEvent: (isAgreed) {
        emit(state.copyWith(
          status: JoinStatus.loding,
          allAgreeTerm: isAgreed,
          serviceTerm: isAgreed,
          collectionTerm: isAgreed,
          marketingTerm: isAgreed,
        ));
      }, serviceTermEvent: (isAgreed) {
        emit(state.copyWith(serviceTerm: isAgreed));
        if (state.serviceTerm && state.collectionTerm && state.marketingTerm) {
          emit(state.copyWith(allAgreeTerm: true));
        } else {
          emit(state.copyWith(allAgreeTerm: false));
        }
      }, collectionTermEvent: (isAgreed) {
        emit(state.copyWith(collectionTerm: isAgreed));
        if (state.serviceTerm && state.collectionTerm && state.marketingTerm) {
          emit(state.copyWith(allAgreeTerm: true));
        } else {
          emit(state.copyWith(allAgreeTerm: false));
        }
      }, marketingTermEvent: (isAgreed) {
        emit(state.copyWith(marketingTerm: isAgreed));
        if (state.serviceTerm && state.collectionTerm && state.marketingTerm) {
          emit(state.copyWith(allAgreeTerm: true));
        } else {
          emit(state.copyWith(allAgreeTerm: false));
        }
      },
          // 약관 완료
          termCompletEvent: () {
        if (state.allAgreeTerm || (state.serviceTerm && state.collectionTerm)) {
          emit(state.copyWith(status: JoinStatus.termSuccess));
        } else {
          emit(state.copyWith(status: JoinStatus.loding));
        }
      },
          // 이메일 인증 코드 요청
          sendCertificationMailEvent: (email) async {
        try {
          await _api.sendCertificationMail({'email': email});
          emit(state.copyWith(status: JoinStatus.sendMail));
          add(JoinEvent.startTimerEvent(119));
        } catch (e) {
          emit(state.copyWith(status: JoinStatus.failure));
          print('이메일 인증 코드 보내기 실패 : ${e.toString()}');
        }
      },
          // 타이머 발동
          startTimerEvent: (durationInSeconds) async {
        int remainingSeconds = durationInSeconds;
        bool timerStatus = true;
        while (remainingSeconds > -1 && timerStatus) {
          if (state.status == JoinStatus.codeSuccess) {
            timerStatus = false;
          } else {
            // 타이머 값을 두 자리 숫자로 포맷팅
            String minutes =
                (remainingSeconds ~/ 60).toString().padLeft(2, '0');
            String seconds = (remainingSeconds % 60).toString().padLeft(2, '0');
            emit(state.copyWith(timerVal: '$minutes:$seconds'));
            await Future.delayed(Duration(seconds: 1));
            remainingSeconds--;
          }
          if (remainingSeconds == 0) {
            emit(state.copyWith(
                status: JoinStatus.timerOver, timerVal: '00:00'));
          }
        }
      },
          // 이메일 인증 코드 확인
          certifyCodeEvent: (email, code) async {
        if (state.status == JoinStatus.sendMail) {
          // emit(CertificationInProgress());
          try {
            await _api.certificationMailCode({'email': email, 'certNum': code});
            emit(state.copyWith(status: JoinStatus.codeSuccess));
          } catch (e) {
            emit(state.copyWith(status: JoinStatus.failure));
            print('이메일 인증 코드 확인 실패: ${e.toString()}');
          }
        } else {
          emit(state.copyWith(status: JoinStatus.failure));
          print('이메일 인증 코드 확인 > 상태가 sendMail이 아님');
        }
      },
          // 코드 틀릴 경우
          codeFailEvent: () {
        print('지금 타이머 몇임?---------------${state.timerVal}');
        if (state.timerVal != '00:00') {
          emit(state.copyWith(status: JoinStatus.sendMail));
        } else if (state.status == JoinStatus.timerOver) {
          emit(state.copyWith(status: JoinStatus.termSuccess));
        }
      },
          //--------------------[ 개인정보 입력 ]----------------------
          // 아이디 중복 확인
          idOverlapCheckEvent: (id) async {
        try {
          await _api.idOverlapCheckApi(id.toString());
          emit(state.copyWith(idCheck: true));
        } catch (e) {
          emit(state.copyWith(idCheck: false));
          print('아이디 중복 체크 실패: ${e.toString()}');
        }
      },
          // 아이디 입력시
          changeUserIdEvent: (userId) {
        emit(state.copyWith(userId: userId));
        emit(state.copyWith(idCheck: true));
        // if (state.idCheck) {
        //   emit(state.copyWith(idCheck: false));
        // }
      },
          // 회원 가입
          joinUserEvent: (user) async {
        try {
          await _api.joinUser(user);
          emit(state.copyWith(status: JoinStatus.success));
          print('---------여기탐?');
        } catch (e) {
          emit(state.copyWith(status: JoinStatus.failure));
          print('회원가입 실패: ${e.toString()}');
        }
      },
          // 회원 정보 개별 벨리데이션 체크
          validationCheck: (type, value) {
        switch (type) {
          case 'nickName':
            emit(state.copyWith(nickName: value));
            break;

          case 'email':
            emit(state.copyWith(email: value));
            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            emit(state.copyWith(
              email: value,
              emailVal: emailRegex.hasMatch(value),
            ));
            break;

          case 'pw':
            final hasLetter = RegExp(r'[A-Za-z]').hasMatch(value);
            final hasNumber = RegExp(r'[0-9]').hasMatch(value);
            final validLength = value.length >= 8 && value.length <= 20;
            // final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
            // 영문 벨리데이션
            emit(state.copyWith(
              userPw: value,
              pwEngVal: hasLetter,
              pwNumberVal: hasNumber,
              pwLengthVal: validLength,
            ));
            break;

          case 'pwCheck':
            emit(state.copyWith(
              pwCheck: state.userPw == value,
            ));
            break;
          // case 'username':
          //   final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{4,20}$');
          //   if (value.isEmpty) {
          //     return '아이디를 입력해주세요';
          //   } else if (!usernameRegex.hasMatch(value)) {
          //     return '아이디는 4-20자의 영문, 숫자, 언더스코어만 사용 가능합니다';
          //   }
          //   return '';

          // default:
          //   return '알 수 없는 필드입니다';
        }
      });
    });

    //--------------------[ 개인정보 입력 ]----------------------
    // 닉네임 벨리데이션
    String validateUserInfo(String type, String value) {
      switch (type) {
        case 'email':
          final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
          if (value.isEmpty) {
            return '이메일을 입력해주세요';
          } else if (!emailRegex.hasMatch(value)) {
            return '올바른 이메일 형식이 아닙니다';
          }
          return '';

        case 'password':
          final passwordRegex = RegExp(
              r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
          if (value.isEmpty) {
            return '비밀번호를 입력해주세요';
          } else if (!passwordRegex.hasMatch(value)) {
            return '비밀번호는 8자 이상, 영문, 숫자, 특수문자를 포함해야 합니다';
          }
          return '';

        case 'nickname':
          if (value.isEmpty) {
            return '닉네임을 입력해주세요';
          } else if (value.length < 2 || value.length > 10) {
            return '닉네임은 2-10자 사이여야 합니다';
          }
          return '';

        case 'username':
          final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{4,20}$');
          if (value.isEmpty) {
            return '아이디를 입력해주세요';
          } else if (!usernameRegex.hasMatch(value)) {
            return '아이디는 4-20자의 영문, 숫자, 언더스코어만 사용 가능합니다';
          }
          return '';

        default:
          return '알 수 없는 필드입니다';
      }
    }
  }
}
