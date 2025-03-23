sealed class TimerGraphEvent {
  const TimerGraphEvent();
}

final class InitTimerGraph extends TimerGraphEvent {}

final class FetchTimerGraph extends TimerGraphEvent {
  final DateTime date;

  FetchTimerGraph({required this.date});
}