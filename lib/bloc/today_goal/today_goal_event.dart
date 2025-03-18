sealed class TodayGoalEvent {
  const TodayGoalEvent();
}

class InitTodayGoal extends TodayGoalEvent {}

class UpdateTodayGoal extends TodayGoalEvent {
  final String goalText;
  final String goalIconPath;
  final DateTime? goalDate;

  UpdateTodayGoal({required this.goalText, required this.goalIconPath, required this.goalDate});
}

class UpdateGoalDate extends TodayGoalEvent {
  final DateTime goalDate;

  UpdateGoalDate({required this.goalDate});
}
