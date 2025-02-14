sealed class CircleTimerEvent {
  const CircleTimerEvent();
}

final class TimerStarted extends CircleTimerEvent {
  final int? duration; // 무한 타이머: null
  final int todoIdx;
  const TimerStarted({this.duration, required this.todoIdx});
}

final class TimerPaused extends CircleTimerEvent {
  final int todoIdx;
  const TimerPaused({required this.todoIdx});
}

final class TimerResumed extends CircleTimerEvent {
  final bool hasHistory;
  const TimerResumed({this.hasHistory = false});
}

class TimerReset extends CircleTimerEvent {
  const TimerReset();
}

class TimerStreamStop extends CircleTimerEvent {}

class TimerTicked extends CircleTimerEvent {
  final int duration; // 현재 타이머 값
  const TimerTicked({required this.duration});
}

class AddTimerHistory extends CircleTimerEvent {
  final int todoIdx;
  AddTimerHistory({required this.todoIdx});
}

class FetchTimerHistory extends CircleTimerEvent {
  final int todoIdx;
  FetchTimerHistory({required this.todoIdx});
}

class UpdateTimerHistory extends CircleTimerEvent {
  final int todoIdx;
  UpdateTimerHistory({required this.todoIdx});
}