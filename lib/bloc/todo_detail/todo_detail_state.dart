import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

enum TodoDetailStatus { initial, deleted, added, error, updated, success, timeValueError, emptyTitleError }

class TodoDetailState extends Equatable {
  const TodoDetailState({
    this.todoIdx,
    this.status = TodoDetailStatus.initial,
    this.todoDate,
    this.startTargetDt,
    this.endTargetDt,
    this.categoryIdx,
    this.lastAddedTodo
  });

  final int? todoIdx;
  final TodoDetailStatus status;
  final DateTime? todoDate;
  final DateTime? startTargetDt;
  final DateTime? endTargetDt;
  final int? categoryIdx;
  final Todo? lastAddedTodo;

  TodoDetailState copyWith({
    final int? todoIdx,
    TodoDetailStatus? status,
    final DateTime? todoDate,
    final DateTime? startTargetDt,
    final DateTime? endTargetDt,
    final int? categoryIdx,
    final Todo? lastAddedTodo
}) {
    return TodoDetailState(
      todoIdx: todoIdx ?? this.todoIdx,
      status: status ?? this.status,
      todoDate: todoDate ?? this.todoDate,
      startTargetDt: startTargetDt ?? this.startTargetDt,
      endTargetDt: endTargetDt ?? this.endTargetDt,
      categoryIdx: categoryIdx ?? this.categoryIdx,
        lastAddedTodo: lastAddedTodo ?? this.lastAddedTodo
    );
  }

  @override
  List<Object?> get props => [todoIdx, status, startTargetDt, endTargetDt, todoDate, categoryIdx, lastAddedTodo];
}