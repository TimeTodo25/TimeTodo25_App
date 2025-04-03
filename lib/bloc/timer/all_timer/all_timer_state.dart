import 'package:equatable/equatable.dart';

enum AllTimerStatus { initial, success, error, update, delete }

class AllTimerState extends Equatable {
  final List<int> hasTimerTodoIds;
  final AllTimerStatus status;
  final Map<int, int> todoTotalTms;  // 각 투두의 totalTm 저장

  const AllTimerState(this.hasTimerTodoIds, this.status, this.todoTotalTms);

  AllTimerState copyWith({
    List<int>? hasTimerTodoIds,
    AllTimerStatus? status,
    Map<int, int>? todoTotalTms,
  }) {
    return AllTimerState(
      hasTimerTodoIds ?? this.hasTimerTodoIds,
      status ?? this.status,
        todoTotalTms ?? this.todoTotalTms
    );
  }

  @override
  List<Object?> get props => [hasTimerTodoIds, status, todoTotalTms];

  @override
  String toString() {
    return "hasTimerTodoIds = $hasTimerTodoIds";
  }
}