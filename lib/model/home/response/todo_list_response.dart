import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/catagory_with_todos.dart';
import 'package:time_todo/model/home/response/interval_day_todo.dart';

part 'todo_list_response.freezed.dart';
part 'todo_list_response.g.dart';

@freezed
class TodoListResponse with _$TodoListResponse {
  factory TodoListResponse({
    required List<IntervalDayTodo> intervalDayTodos,
    required List<CategoryWithTodos> categories,
  }) = _TodoListResponse;

  factory TodoListResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoListResponseFromJson(json);
}
