import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/user/user.dart';

part 'join_event.freezed.dart';

@freezed
class JoinEvent with _$JoinEvent {
// 전체 약관 동의
  const factory JoinEvent.allAgreeTermEvent(bool isAgreed) = _AllAgreeTermEvent;

// 서비스 이용 약관
  const factory JoinEvent.serviceTermEvent(bool isAgreed) = _ServiceTermEvent;

// 개인정보 이용 약관
  const factory JoinEvent.collectionTermEvent(bool isAgreed) =
      _CollectionTermEvent;

// 마케팅 이용 약관
  const factory JoinEvent.marketingTermEvent(bool isAgreed) =
      _MarketingTermEvent;

// 약관동의 완료
  const factory JoinEvent.termCompletEvent() = _TermCompletEvent;

// 이메일 발송
  const factory JoinEvent.sendCertificationMailEvent(String email) =
      _SendCertificationMailEvent;

// 타이머 발동 이벤트
  const factory JoinEvent.startTimerEvent(int durationInSeconds) =
      _StartTimerEvent;

// 코드 인증
  const factory JoinEvent.certifyCodeEvent(String email, String code) =
      _CertifyCodeEvent;

// 이메일, 코드 인증
  // const factory JoinEvent.certificationMailCodeEvent(
  //     String email, String code) = _CertificationMailCodeEvent;

//=====================[ 개인정보 등록 ]=============

// 아이디 중복 체크
  const factory JoinEvent.idOverlapCheckEvent(dynamic id) =
      _IdOverlapCheckEvent;

// 회원 가입
  const factory JoinEvent.joinUserEvent(User user) = _JoinUserEvent;
}
