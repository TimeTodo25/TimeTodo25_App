import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_update_request.freezed.dart';

part 'todo_update_request.g.dart';

@freezed
class TodoUpdateRequest with _$TodoUpdateRequest {
  factory TodoUpdateRequest({
    required int idx,
    required String content,
    @DateOnlyConverter() required DateTime targetDate, // 투두 일시
    @NullableTimeConverter() DateTime? startTargetTm,
    @NullableTimeConverter() DateTime? endTargetTm,
  }) = _TodoUpdateRequest;

  factory TodoUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoUpdateRequestFromJson(json);

  factory TodoUpdateRequest.fromTodo(Todo todo) => TodoUpdateRequest(
      idx: todo.syncIdx ?? 0,
      content: todo.content,
      targetDate: todo.todoDate,
      startTargetTm: todo.startTargetDt,
      endTargetTm: todo.endTargetDt);
}
