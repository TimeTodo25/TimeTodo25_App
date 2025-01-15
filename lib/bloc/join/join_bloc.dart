import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/api/join_api.dart';
import 'package:time_todo/bloc/join/join_event.dart';
import 'package:time_todo/bloc/join/join_state.dart';
import 'package:time_todo/dio/api_dio_client.dart';

class JoinBloc extends Bloc<JoinEvent, JoinState> {
  late JoinApi _api;

  JoinBloc() : super(JoinInitial()) {
    _api = JoinApi(apiDioClient());
    // 약관 동의 [ 전체 / 서비스 / 개인정보 / 마켓팅 순 ]
    on<JoinEvent>((event, emit) async {
      await event.when(
        allAgreeTermEvent: (isAgreed) {
          emit(AllAgreeTerm(isAgreed: isAgreed));
        },
        serviceTermEvent: (isAgreed) {
          emit(ServiceTerm(isAgreed: isAgreed));
        },
        collectionTermEvent: (isAgreed) {
          emit(CollectionTerm(isAgreed: isAgreed));
        },
        marketingTermEvent: (isAgreed) {
          emit(MarketingTerm(isAgreed: isAgreed));
        },
        // 약관 완료
        termCompletEvent: () {
          emit(TermComplet());
        },
        // 이메일 인증 코드 요청
        sendCertificationMailEvent: (email) async {
          emit(JoinInitial());
          try {
            await _api.sendCertificationMail(email);
            emit(CertificationMailSend());
            add(JoinEvent.startTimerEvent(120));
          } catch (e) {
            emit(JoinError(msg: '이메일 인증 코드 발송 실패: ${e.toString()}'));
          }
        },
        // 타이머 발동
        startTimerEvent: (durationInSeconds) async {
          int remainingSeconds = durationInSeconds;
          bool timerStatus = true;
          while (remainingSeconds > 0 && timerStatus) {
            if (state is CodeCertifiedSucces) {
              timerStatus = false;
            } else {
              emit(StartTimer(timerValue: remainingSeconds));
              await Future.delayed(Duration(seconds: 1));
              remainingSeconds--;
            }
          }
          if (remainingSeconds == 0) {
            emit(TimerComplated());
          }
        },
        // 이메일 인증 코드 확인
        certifyCodeEvent: (email, code) async {
          if (state is StartTimer) {
            emit(CertificationInProgress());
            try {
              await _api.certificationMailCode(email, code);
              emit(CodeCertifiedSucces());
            } catch (e) {
              emit(JoinError(msg: '이메일 인증 코드 확인 실패: ${e.toString()}'));
            }
          } else {
            emit(JoinError(msg: '이메일 인증 코드 발송 안됨 or 타이머 안돌아감'));
          }
        },
        //--------------------[ 개인정보 입력 ]----------------------
        // 아이디 중복 확인
        idOverlapCheckEvent: (id) async {
          try {
            await _api.idOverlapCheckApi(id.toString());
            emit(IdOverLapCompleted());
          } catch (e) {
            emit(JoinError(msg: '아이디 중복 체크 실패: ${e.toString()}'));
          }
        },
        // 회원 가입
        joinUserEvent: (user) async {
          emit(JoinLoading());
          try {
            await _api.joinUser(user);
            emit(UserJoined());
          } catch (e) {
            emit(JoinError(msg: '회원가입 실패: ${e.toString()}'));
          }
        },
      );
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
