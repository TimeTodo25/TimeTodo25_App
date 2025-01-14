import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/todo_item.dart';

part 'catagory_with_todos.freezed.dart';
part 'catagory_with_todos.g.dart';

@freezed
class CategoryWithTodos with _$CategoryWithTodos {
  factory CategoryWithTodos({
    required int idx,
    required String title,
    required String mainColor,
    required String publicStatus,
    required DateTime createDt,
    DateTime? updateDt,
    required List<TodoItem> todos,
  }) = _CategoryWithTodos;

  factory CategoryWithTodos.fromJson(Map<String, dynamic> json) =>
      _$CategoryWithTodosFromJson(json);
}
