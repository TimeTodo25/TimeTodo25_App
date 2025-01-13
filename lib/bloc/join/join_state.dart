import 'package:equatable/equatable.dart';

// 기본 상태 정의
abstract class JoinState extends Equatable {
  @override
  List<Object?> get props => [];
}

// 초기 상태
class JoinInitial extends JoinState {}

// 로딩 상태
class JoinLoading extends JoinState {}

// 에러 상태
class JoinError extends JoinState {
  final String msg;

  JoinError({required this.msg});
}

// 정상 작동 완료 상태
class JoinLoaded extends JoinState {}

//---------------------------------------------

// 약관 전체 동의
class AllAgreeTerm extends JoinState {
  final bool isAgreed;

  AllAgreeTerm({required this.isAgreed});

  @override
  List<Object?> get props => [isAgreed];
}

// 서비스 이용 약관
class ServiceTerm extends JoinState {
  final bool isAgreed;

  ServiceTerm({required this.isAgreed});

  @override
  List<Object?> get props => [isAgreed];
}

// 개인정보 수집 및 이용 약관
class CollectionTerm extends JoinState {
  final bool isAgreed;

  CollectionTerm({required this.isAgreed});

  @override
  List<Object?> get props => [isAgreed];
}

// 광고 및 마케팅 수신 동의 약관
class MarketingTerm extends JoinState {
  final bool isAgreed;

  MarketingTerm({required this.isAgreed});

  @override
  List<Object?> get props => [isAgreed];
}

// 약관 동의 완료
class TermComplet extends JoinState {
  TermComplet();
}

// 이메일 발송
class CertificationMailSend extends JoinState {}

// 타이머 시간 이벤트
class StartTimer extends JoinState {
  final int timerValue;

  StartTimer({required this.timerValue});

  @override
  List<Object?> get props => [timerValue];
}

class TimerComplated extends JoinState {}

// 코드 검증 진행중
class CertificationInProgress extends JoinState {}

// 코드 검증 성공
class CodeCertifiedSucces extends JoinState {}

// 코드 검증 실패
class CodeCertifiedFailed extends JoinState {}

// 아이디 중복 확인 성공
class IdOverLapCompleted extends JoinState {}

// 회원가입 완료 상태
class UserJoined extends JoinState {}
