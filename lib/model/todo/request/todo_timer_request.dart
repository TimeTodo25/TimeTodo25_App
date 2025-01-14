import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/todo/request/todo_timer_data.dart';

part 'todo_timer_request.freezed.dart';
part 'todo_timer_request.g.dart';

@freezed
class TodoTimerRequest with _$TodoTimerRequest {
  factory TodoTimerRequest({
    required int idx,
    required List<TodoTimerData> timerData,
  }) = _TodoTimerRequest;

  factory TodoTimerRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoTimerRequestFromJson(json);
}
