import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

part 'todo_progress_update_request.freezed.dart';
part 'todo_progress_update_request.g.dart';

@freezed
class TodoProgressUpdateRequest with _$TodoProgressUpdateRequest {
  factory TodoProgressUpdateRequest({
    required int idx,
    required int progressStatus
  })= _TodoProgressUpdateRequest;

  factory TodoProgressUpdateRequest.fromJson(Map<String, double> json) =>
      _$TodoProgressUpdateRequestFromJson(json);

  factory TodoProgressUpdateRequest.fromTodo(Todo todo) => TodoProgressUpdateRequest(
      idx: todo.syncIdx ?? 0,
      progressStatus: todo.progressStatus
  );
}
