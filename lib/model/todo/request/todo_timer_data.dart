import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_timer_data.freezed.dart';
part 'todo_timer_data.g.dart';

@freezed
class TodoTimerData with _$TodoTimerData {
  factory TodoTimerData({
    @DateTimeIsoConverter()
    required DateTime startDt,
    @DateTimeIsoConverter()
    required DateTime endDt,
  }) = _TodoTimerData;

  factory TodoTimerData.fromJson(Map<String, dynamic> json) =>
      _$TodoTimerDataFromJson(json);
}
