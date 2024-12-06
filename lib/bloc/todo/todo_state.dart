import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo_tbl.dart';

abstract class TodoState extends Equatable {

  @override
  List<Object?> get props => [];

}

// Bloc 가 처음 시작할 때의 상태
class TodoInitial extends TodoState { }

// 투두가 비어 있을 때의 상태
class TodoEmpty extends TodoState { }

// 투두 로딩 시 상태
class TodoLoaded extends TodoState {
  final List<Todo> todos;
  TodoLoaded({required this.todos});

  @override
  List<Object?> get props => [todos];
}

// 투두 완료 후 체크된 상태
class TodoCheck extends TodoState {
  final int index;
  TodoCheck({required this.index});

  @override
  String toString() {
    return "Todo가 체크되었습니다...";
  }
}

// 투두 로딩 에러 난 상태
class TodoError extends TodoState {
  @override
  String toString() {
    return "Todo 로딩 에러...";
  }
}


class SelectTodoCategory extends TodoState {
  final int ind;
  SelectTodoCategory({required this.ind});
}

