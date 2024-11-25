import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo_tbl.dart';

abstract class TodoState extends Equatable {

  @override
  List<Object?> get props => [];

}

// Bloc 가 처음 시작할 때의 상태
class TodoInitial extends TodoState {

}

// 새로운 Todo 항목이 추가된 후, Todo 리스트를 화면에 보여줄 때 사용.
class TodoLoaded extends TodoState {
  final List<Todo> todos;

  TodoLoaded({required this.todos});

  @override
  List<Object?> get props => [todos];
}

class TodoCheck extends TodoState {
  final int index;

  TodoCheck({required this.index});

  @override
  String toString() {
    return "Todo가 체크되었습니다...";
  }

}