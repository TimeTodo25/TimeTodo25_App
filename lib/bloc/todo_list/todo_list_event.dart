import 'dart:core';
import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

sealed class TodoListEvent extends Equatable  {
  @override
  List<Object?> get props => [];
}

class FetchTodos extends TodoListEvent {}

class InitTodos extends TodoListEvent {}

class GetTodosByDate extends TodoListEvent {
  final DateTime date;

  GetTodosByDate({required this.date});
}

class GetTodosByMonth extends TodoListEvent {
  final DateTime date;

  GetTodosByMonth(this.date);
}

class GetTodosByCategory extends TodoListEvent {
  final int categoryIdx;
  final DateTime dateTime;

  GetTodosByCategory({required this.categoryIdx, required this.dateTime});

}