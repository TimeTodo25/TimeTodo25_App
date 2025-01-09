import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

enum TodoStatus { initial, loaded, modifying, success, failure, done, timeValueError, emptyTitleError }

class TodoState extends Equatable {
  const TodoState({
    this.status = TodoStatus.initial,
    this.todos = const <Todo>[],
    this.todoDate,
    this.startTargetDt,
    this.endTargetDt
  });

  final TodoStatus status;
  final List<Todo> todos;
  final DateTime? todoDate;
  final DateTime? startTargetDt;
  final DateTime? endTargetDt;

  TodoState copyWith({
    TodoStatus? status,
    List<Todo>? todos,
    final DateTime? todoDate,
    final DateTime? startTargetDt,
    final DateTime? endTargetDt
}) {
    return TodoState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
      todoDate: todoDate ?? this.todoDate,
      startTargetDt: startTargetDt ?? this.startTargetDt,
      endTargetDt: endTargetDt ?? this.endTargetDt,
    );
  }

  @override
  String toString() {
    return '''TodoState { status: $status, todo length: ${todos.length} }''';
  }

  @override
  List<Object?> get props => [status, todos, startTargetDt, endTargetDt, todoDate];
}