import '../../entity/todo/todo_tbl.dart';

sealed class CalendarEvent {}

final class InitCalendar extends CalendarEvent {}

final class ToggleCalendarFormat extends CalendarEvent {}

final class FetchCalendar extends CalendarEvent {
  final List<Todo> todos;
  FetchCalendar(this.todos);
}