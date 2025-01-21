sealed class LinearTimerEvent { }

final class TimerStart extends LinearTimerEvent {
  final int? runningDuration; // 무한 타이머: null
  TimerStart({required this.runningDuration});
}

final class TimerPause extends LinearTimerEvent {
  final int stoppingDuration;

  TimerPause({required this.stoppingDuration});
}

final class TimerResumed extends LinearTimerEvent {}

class LinearTimerReset extends LinearTimerEvent {}

class TimerStop extends LinearTimerEvent {}

class TimerRunTicked extends LinearTimerEvent {
  final int runningDuration;

  TimerRunTicked({required this.runningDuration});
}

class TimerStopTicker extends LinearTimerEvent {
  final int stoppingDuration;
  TimerStopTicker({required this.stoppingDuration});
}
