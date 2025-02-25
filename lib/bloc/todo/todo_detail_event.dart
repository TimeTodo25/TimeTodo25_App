import 'dart:core';
import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

sealed class TodoDetailEvent extends Equatable  {
  @override
  List<Object?> get props => [];
}

class AddTodo extends TodoDetailEvent {
  final Todo todo;
  AddTodo(this.todo);

  @override
  List<Object?> get props => [todo];
}


class UpdateTodoDate extends TodoDetailEvent {
  final DateTime? todoDate;
  UpdateTodoDate(this.todoDate);

  @override
  List<Object?> get props => [todoDate];
}

class UpdateStartTargetDt extends TodoDetailEvent {
  final DateTime? startTargetDt;
  UpdateStartTargetDt(this.startTargetDt);

  @override
  List<Object?> get props => [startTargetDt];
}

class UpdateEndTargetDt extends TodoDetailEvent {
  final DateTime? endTargetDt;
  UpdateEndTargetDt(this.endTargetDt);

  @override
  List<Object?> get props => [endTargetDt];
}

class InitTodo extends TodoDetailEvent {}

class ModifyTodo extends TodoDetailEvent {
  final Todo newTodo;
  ModifyTodo(this.newTodo);

  @override
  List<Object?> get props => [newTodo];
}

class DeleteTodo extends TodoDetailEvent {
  final int idx;
  DeleteTodo(this.idx);
}