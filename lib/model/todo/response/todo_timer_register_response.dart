import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_timer_register_response.freezed.dart';
part 'todo_timer_register_response.g.dart';

@freezed
class TodoTimerRegisterResponse with _$TodoTimerRegisterResponse {
  factory TodoTimerRegisterResponse({
    @DateTimeIsoConverter()
    required DateTime updateDt,
    required List<int> timerIdxList
  }) = _TodoTimerRegisterResponse;

  factory TodoTimerRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoTimerRegisterResponseFromJson(json);
}