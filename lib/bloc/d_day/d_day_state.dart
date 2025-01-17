import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';

enum DdayStatus {
  initial, // 초기 상태
  loading, // 데이터 로딩 중
  loaded, // 데이터 로드 완료
  creating, // 새 디데이 생성 중
  updating, // 디데이 수정 중
  deleting, // 디데이 삭제 중
  success, // 작업 성공
  failure, // 작업 실패

  // 유효성 검사 관련 에러 상태들
  emptyTitleError, // 제목 없음 에러
  invalidDateError, // 날짜 유효성 에러
}

class DdayState extends Equatable {
  DdayState({
    this.status = DdayStatus.initial,
    this.dDays = const <Dday>[],
    this.dDay,
  });

  final DdayStatus status;
  final List<Dday> dDays;
  final Dday? dDay;

  DdayState copyWith({
    DdayStatus? status,
    List<Dday>? dDays,
    Dday? dDay,
  }) {
    return DdayState(
      status: status ?? this.status,
      dDays: dDays ?? this.dDays,
      dDay: dDay ?? this.dDay,
    );
  }

  @override
  List<Object?> get props => [status, dDays, dDay];
}
