
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_segment.dart';

part 'timer_tbl.freezed.dart';
part 'timer_tbl.g.dart';

@freezed
class TimerModel with _$TimerModel {
  factory TimerModel({
    int? idx, // Timer History index
    required String historyEndDt,
    required String historyStartDt,
    required TimerLogType historyType,
    required String totalTm,
    required int todoIdx,
    @Default("Y") String status, // Y: 정상, D: 삭제
    int? syncIdx, // 서버 pk
    int? syncCategoryIdx, // 서버 fk
    DateTime? syncDt, // 서버 동기화 시간
    @Default("P") String syncStatus // 서버 동기화 상태 (P: 준비, S: 완료, F: 실패)
  }) = _TimerModel;

  factory TimerModel.fromJson(Map<String, dynamic> json) => _$TimerModelFromJson(json);
}