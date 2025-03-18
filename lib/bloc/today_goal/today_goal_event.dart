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

class UpdateGoalIcon extends TodayGoalEvent {
  final String iconPath;

  UpdateGoalIcon({required this.iconPath});
}

class UpdateGoalText extends TodayGoalEvent {
  final String goalText;

  UpdateGoalText({required this.goalText});
}
