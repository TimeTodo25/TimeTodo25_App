import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'timer_histories.freezed.dart';
part 'timer_histories.g.dart';

@freezed
class TimerHistories with _$TimerHistories {
  factory TimerHistories({
    @DateTimeIsoConverter()
    required DateTime startDt,
    @DateTimeIsoConverter()
    required DateTime endDt,
    required String totalTm,
  }) = _TimerHistories;

  factory TimerHistories.fromJson(Map<String, dynamic> json) =>
      _$TimerHistoriesFromJson(json);
}
