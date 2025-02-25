import 'dart:core';
import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

sealed class TodoListEvent extends Equatable  {
  @override
  List<Object?> get props => [];
}

class FetchTodos extends TodoListEvent {}

class InitTodos extends TodoListEvent {}

class GetTodosByMonth extends TodoListEvent {
  final DateTime date;

  GetTodosByMonth({required this.date});
}

class GetTodosByCategory extends TodoListEvent {
  final int categoryIdx;

  GetTodosByCategory(this.categoryIdx);
}