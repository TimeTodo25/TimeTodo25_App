import 'package:equatable/equatable.dart';

enum JoinStatus {
  initial,
  loding,
  // 인증 코드 메일 보냄
  sendMail,
  // 코드 인증 완료,
  codeSuccess,
  // 코드 인증 실패,
  codeFailure,
  // 약관 동의 완료,
  termSuccess,
  // 타이머 종료
  timerOver,
  // 이미 존재하는 이메일
  emailOverlap,

  // 성공
  success,
  // 실패
  failure,
  // 오류
  error,
}

// 기본 상태 정의
class JoinState extends Equatable {
  JoinState({
    this.status = JoinStatus.initial,
    this.allAgreeTerm = false,
    this.serviceTerm = false,
    this.collectionTerm = false,
    this.marketingTerm = false,
    this.emailVal = false,
    this.timerVal,
    this.idCheck = false,
    this.pwEngVal = false,
    this.pwNumberVal = false,
    this.pwLengthVal = false,
    this.pwCheck = false,
    this.email,
    this.nickName,
    this.userId,
    this.userPw,
  });

  final JoinStatus status;
  final bool allAgreeTerm;
  final bool serviceTerm;
  final bool collectionTerm;
  final bool marketingTerm;
  final bool emailVal;
  final String? timerVal;
  final bool idCheck;
  final bool pwEngVal;
  final bool pwNumberVal;
  final bool pwLengthVal;
  final bool pwCheck;
  final String? email;
  final String? nickName;
  final String? userId;
  final String? userPw;

  JoinState copyWith({
    JoinStatus? status,
    bool? allAgreeTerm,
    bool? serviceTerm,
    bool? collectionTerm,
    bool? marketingTerm,
    bool? emailVal,
    String? timerVal,
    bool? idCheck,
    bool? pwEngVal,
    bool? pwNumberVal,
    bool? pwLengthVal,
    bool? pwCheck,
    String? email,
    String? nickName,
    String? userId,
    String? userPw,
  }) {
    return JoinState(
        status: status ?? this.status,
        allAgreeTerm: allAgreeTerm ?? this.allAgreeTerm,
        serviceTerm: serviceTerm ?? this.serviceTerm,
        collectionTerm: collectionTerm ?? this.collectionTerm,
        marketingTerm: marketingTerm ?? this.marketingTerm,
        emailVal: emailVal ?? this.emailVal,
        timerVal: timerVal ?? this.timerVal,
        idCheck: idCheck ?? this.idCheck,
        pwEngVal: pwEngVal ?? this.pwEngVal,
        pwNumberVal: pwNumberVal ?? this.pwNumberVal,
        pwLengthVal: pwLengthVal ?? this.pwLengthVal,
        pwCheck: pwCheck ?? this.pwCheck,
        email: email ?? this.email,
        nickName: nickName ?? this.nickName,
        userId: userId ?? this.userId,
        userPw: userPw ?? this.userPw);
  }

  @override
  List<Object?> get props => [
        status,
        allAgreeTerm,
        serviceTerm,
        collectionTerm,
        marketingTerm,
        emailVal,
        timerVal,
        idCheck,
        pwEngVal,
        pwNumberVal,
        pwLengthVal,
        pwCheck,
        email,
        nickName,
        userId,
        userPw,
      ];
}
