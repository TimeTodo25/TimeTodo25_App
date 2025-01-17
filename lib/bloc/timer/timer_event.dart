sealed class TimerEvent {
  const TimerEvent();
}

final class TimerStarted extends TimerEvent {
  final int? duration; // 무한 타이머: null
  const TimerStarted({this.duration});
}

final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

class TimerReset extends TimerEvent {
  const TimerReset();
}

class TimerTicked extends TimerEvent {
  final int duration; // 현재 타이머 값
  const TimerTicked({required this.duration});
}