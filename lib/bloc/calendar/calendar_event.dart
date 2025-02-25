import '../../entity/todo/todo_tbl.dart';

sealed class CalendarEvent {}

final class InitCalendar extends CalendarEvent {}

final class ToggleCalendarFormat extends CalendarEvent {}

final class FetchCalendarData extends CalendarEvent {
  final List<Todo> todos;
  FetchCalendarData(this.todos);
}

class LoadMonthCalendarData extends CalendarEvent {
  final DateTime date;

  LoadMonthCalendarData({required this.date});
}

class GetEventDayCategoryData extends CalendarEvent {
  final DateTime date;

  GetEventDayCategoryData(this.date);
}

class ChangeViewContent extends CalendarEvent {}