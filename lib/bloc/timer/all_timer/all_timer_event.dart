sealed class AllTimerEvent {
  const AllTimerEvent();
}

class InitAllTimerBloc extends AllTimerEvent {}

class GetTimerHistoryByDate extends AllTimerEvent {
  final DateTime date;
  GetTimerHistoryByDate({required this.date});
}