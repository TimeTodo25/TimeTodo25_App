sealed class LinearTimerEvent { }

final class TimerStart extends LinearTimerEvent {
  final int? runningDuration; // 무한 타이머: null
  TimerStart({required this.runningDuration});
}

final class TimerPause extends LinearTimerEvent {
  final int runningDuration; // 멈춤 버튼을 누르기 전까지, 타이머 run 유지 시간 기록

  TimerPause({required this.runningDuration});
}

final class TimerResumed extends LinearTimerEvent {
  final int stoppingDuration; // 재개 버튼을 누르기 전까지, 타이머 stop 유지 시간 기록

  TimerResumed({required this.stoppingDuration});
}

class LinearTimerReset extends LinearTimerEvent {}

class TimerStop extends LinearTimerEvent {}

class TimerRunTicked extends LinearTimerEvent {
  final int duration;

  TimerRunTicked({required this.duration});
}

class TimerStopTicker extends LinearTimerEvent {
  final int duration;
  TimerStopTicker({required this.duration});
}

class AddTimerHistory extends LinearTimerEvent {
  final int todoIdx;
  AddTimerHistory({required this.todoIdx});
}

class FetchTimerHistory extends LinearTimerEvent {
  final int todoIdx;

  FetchTimerHistory({required this.todoIdx});
}