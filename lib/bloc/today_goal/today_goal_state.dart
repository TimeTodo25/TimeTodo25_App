import 'package:equatable/equatable.dart';

enum TodayGoalStatus { initial, loading, updated, success, error, editing }

class TodayGoalState extends Equatable {
  final String goalText;
  final String goalIconPath;
  final DateTime? goalDate;
  final double totalTm;
  final TodayGoalStatus status;

  const TodayGoalState({
    this.goalText = '',
    this.goalIconPath = "lib/assets/images/home_emoji_smile.png",
    this.goalDate,
    this.totalTm = 0.0,
    this.status = TodayGoalStatus.initial
  });

  TodayGoalState copyWith({
    String? goalText,
    String? goalIconPath,
    DateTime? goalDate,
    double? totalTm,
    TodayGoalStatus? status,
  }) {
    return TodayGoalState(
      goalText: goalText ?? this.goalText,
      goalIconPath: goalIconPath ?? this.goalIconPath,
      goalDate: goalDate ?? this.goalDate,
      totalTm: totalTm ?? this.totalTm,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [goalText, goalIconPath, goalDate, totalTm, status];
}
