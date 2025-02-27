import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

enum TodoListStatus { initial, loading, loaded, failure }

class TodoListState extends Equatable {
  const TodoListState({
    this.status = TodoListStatus.initial,
    this.todos = const <Todo>[],
    this.categoryTodos = const {},
  });

  final TodoListStatus status;
  final List<Todo> todos;
  final Map<int, List<Todo>> categoryTodos; // 카테고리별로 분류한 투두

  TodoListState copyWith({
    TodoListStatus? status,
    List<Todo>? todos,
    Map<int, List<Todo>>? categoryTodos,
  }) {
    return TodoListState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
      categoryTodos: categoryTodos ?? this.categoryTodos,
    );
  }

  @override
  List<Object?> get props => [status, todos, categoryTodos];
}