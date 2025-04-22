import 'package:time_todo/entity/timer/timer_tbl.dart';

sealed class TimerHistoryEvent {
  const TimerHistoryEvent();
}
class InitTimerHistory extends TimerHistoryEvent {}

class SaveTimerHistory extends TimerHistoryEvent {
  final int todoIdx;
  final List<TimerModel> timerModels;

  SaveTimerHistory({required this.todoIdx, required this.timerModels});
}

class FetchTimerHistory extends TimerHistoryEvent {
  final int todoIdx;
  FetchTimerHistory({required this.todoIdx});
}