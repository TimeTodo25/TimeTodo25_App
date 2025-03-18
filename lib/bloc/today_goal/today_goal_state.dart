import 'package:equatable/equatable.dart';

enum TodayGoalStatus { initial, loading, updated, success, error }

class TodayGoalState extends Equatable {
  final String goalText;
  final String goalIconPath;
  final DateTime? goalDate;
  final TodayGoalStatus status;

  const TodayGoalState({
    this.goalText = '',
    this.goalIconPath = '',
    this.goalDate,
    this.status = TodayGoalStatus.initial
  });

  TodayGoalState copyWith({
    String? goalText,
    String? goalIconPath,
    DateTime? goalDate,
    TodayGoalStatus? status,
  }) {
    return TodayGoalState(
      goalText: goalText ?? this.goalText,
      goalIconPath: goalIconPath ?? this.goalIconPath,
      goalDate: goalDate ?? this.goalDate,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [goalText, goalIconPath, goalDate];
}
