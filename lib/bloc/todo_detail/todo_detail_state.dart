import 'package:equatable/equatable.dart';

enum TodoDetailStatus { initial, deleted, error, done, timeValueError, emptyTitleError }

class TodoDetailState extends Equatable {
  const TodoDetailState({
    this.status = TodoDetailStatus.initial,
    this.todoDate,
    this.startTargetDt,
    this.endTargetDt,
    this.categoryIdx
  });

  final TodoDetailStatus status;
  final DateTime? todoDate;
  final DateTime? startTargetDt;
  final DateTime? endTargetDt;
  final int? categoryIdx;
  
  TodoDetailState copyWith({
    TodoDetailStatus? status,
    final DateTime? todoDate,
    final DateTime? startTargetDt,
    final DateTime? endTargetDt,
    final int? categoryIdx
}) {
    return TodoDetailState(
      status: status ?? this.status,
      todoDate: todoDate ?? this.todoDate,
      startTargetDt: startTargetDt ?? this.startTargetDt,
      endTargetDt: endTargetDt ?? this.endTargetDt,
      categoryIdx: categoryIdx ?? this.categoryIdx
    );
  }

  @override
  List<Object?> get props => [status, startTargetDt, endTargetDt, todoDate, categoryIdx];
}