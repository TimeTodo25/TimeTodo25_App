import 'package:equatable/equatable.dart';

enum TodoDetailStatus { initial, modifying, deleted, failure, done, timeValueError, emptyTitleError }

class TodoDetailState extends Equatable {
  const TodoDetailState({
    this.status = TodoDetailStatus.initial,
    this.todoDate,
    this.startTargetDt,
    this.endTargetDt
  });

  final TodoDetailStatus status;
  final DateTime? todoDate;
  final DateTime? startTargetDt;
  final DateTime? endTargetDt;

  TodoDetailState copyWith({
    TodoDetailStatus? status,
    final DateTime? todoDate,
    final DateTime? startTargetDt,
    final DateTime? endTargetDt
}) {
    return TodoDetailState(
      status: status ?? this.status,
      todoDate: todoDate ?? this.todoDate,
      startTargetDt: startTargetDt ?? this.startTargetDt,
      endTargetDt: endTargetDt ?? this.endTargetDt,
    );
  }

  @override
  List<Object?> get props => [status, startTargetDt, endTargetDt, todoDate];
}