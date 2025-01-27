sealed class CircleTimerEvent {
  const CircleTimerEvent();
}

final class TimerStarted extends CircleTimerEvent {
  final int? duration; // 무한 타이머: null
  const TimerStarted({this.duration});
}

final class TimerPaused extends CircleTimerEvent {
  const TimerPaused();
}

final class TimerResumed extends CircleTimerEvent {
  const TimerResumed();
}

class TimerReset extends CircleTimerEvent {
  const TimerReset();
}

class TimerTicked extends CircleTimerEvent {
  final int duration; // 현재 타이머 값
  const TimerTicked({required this.duration});
}