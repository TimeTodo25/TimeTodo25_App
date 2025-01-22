import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';

part 'd_day_event.freezed.dart';

@freezed
class DdayEvent with _$DdayEvent {
  // 디데이 리스트 조회
  const factory DdayEvent.getDdayListEvent() = _GetDdayListEvent;

  // 디데이 상세 조회
  const factory DdayEvent.getDdayDetailEvent(int idx) = _GetDdayDetailEvent;

  // 디데이 지정일 변경
  const factory DdayEvent.updateDdayDateEvent(DateTime dDayDate) =
      _UpdateDdayDateEvent;

  // 디데이 지정일 이후 삭제 여부 변경
  const factory DdayEvent.updateTargetDelStatusEvent(bool targetDelStatus) =
      _UpdateTargetDelStatusEvent;

  // 디데이 등록
  const factory DdayEvent.createDdayEvent(Dday dday) = _CreateDdayEvent;

  // 디데이 수정
  const factory DdayEvent.updateDdayEvent(Dday dday) = _UpdateDdayEvent;

  // 디데이 삭제
  const factory DdayEvent.deleteDdayEvent(int idx) = _DeleteDdayEvent;
}
