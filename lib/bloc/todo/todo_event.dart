import 'dart:core';
import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

sealed class TodoEvent extends Equatable  {
  @override
  List<Object?> get props => [];
}

class AddTodo extends TodoEvent {
  final Todo todo;
  AddTodo(this.todo);

  @override
  List<Object?> get props => [todo];
}

class FetchTodo extends TodoEvent {}


class UpdateTodoDate extends TodoEvent {
  final DateTime? todoDate;
  UpdateTodoDate(this.todoDate);

  @override
  List<Object?> get props => [todoDate];
}

class UpdateStartTargetDt extends TodoEvent {
  final DateTime? startTargetDt;
  UpdateStartTargetDt(this.startTargetDt);

  @override
  List<Object?> get props => [startTargetDt];
}

class UpdateEndTargetDt extends TodoEvent {
  final DateTime? endTargetDt;
  UpdateEndTargetDt(this.endTargetDt);

  @override
  List<Object?> get props => [endTargetDt];
}

class InitTodo extends TodoEvent {}

class ModifyTodo extends TodoEvent {
  final Todo newTodo;
  ModifyTodo(this.newTodo);

  @override
  List<Object?> get props => [newTodo];
}

class DeleteTodo extends TodoEvent {
  final int idx;
  DeleteTodo(this.idx);
}