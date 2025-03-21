sealed class TodayGoalEvent {
  const TodayGoalEvent();
}

class InitTodayGoal extends TodayGoalEvent {}

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

class UpdateTotalTm extends TodayGoalEvent {
  final double totalTm;

  UpdateTotalTm({required this.totalTm});
}