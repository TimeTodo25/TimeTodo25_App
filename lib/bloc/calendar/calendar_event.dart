import '../../entity/todo/todo_tbl.dart';

sealed class CalendarEvent {}

final class InitCalendar extends CalendarEvent {}

final class ToggleCalendarFormat extends CalendarEvent {}

final class ConvertCalendarData extends CalendarEvent {
  final List<Todo> todos;
  ConvertCalendarData(this.todos);
}

class GetEventDayCategoryData extends CalendarEvent {
  final DateTime date;

  GetEventDayCategoryData(this.date);
}

class ChangeViewContent extends CalendarEvent {}

class GetTotalTmByDate extends CalendarEvent {
  final DateTime date;
  final List<Todo> todos;

  GetTotalTmByDate(this.todos, this.date);
}

class UpdateSelectedDay extends CalendarEvent {
  final DateTime date;

  UpdateSelectedDay({required this.date});
}