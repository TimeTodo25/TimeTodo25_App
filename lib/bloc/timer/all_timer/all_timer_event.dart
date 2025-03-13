sealed class AllTimerEvent {
  const AllTimerEvent();
}

class InitAllTimerBloc extends AllTimerEvent {}

class HasTimerHistory extends AllTimerEvent {
  final DateTime date;
  HasTimerHistory({required this.date});
}