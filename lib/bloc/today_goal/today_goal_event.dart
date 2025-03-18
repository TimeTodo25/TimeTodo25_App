sealed class TodayGoalEvent {
  const TodayGoalEvent();
}

class InitTodayGoal extends TodayGoalEvent {}
class EditTodayGoal extends TodayGoalEvent {}
class ChangedDay extends TodayGoalEvent {}
