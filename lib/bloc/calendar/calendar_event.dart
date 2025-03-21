import '../../entity/todo/todo_tbl.dart';

sealed class CalendarEvent {}

final class InitCalendar extends CalendarEvent {}

final class ToggleCalendarFormat extends CalendarEvent {}

final class FetchCalendarDefaultData extends CalendarEvent {
  final List<Todo> todos;
  FetchCalendarDefaultData(this.todos);
}

class GetEventDayCategoryData extends CalendarEvent {
  final DateTime date;

  GetEventDayCategoryData(this.date);
}

class ChangeViewContent extends CalendarEvent {}

class FetchCalendarDataByTotalTm extends CalendarEvent {
  final DateTime date;
  final List<Todo> todos;

  FetchCalendarDataByTotalTm(this.todos, this.date);
}

class UpdateSelectedDay extends CalendarEvent {
  final DateTime date;

  UpdateSelectedDay({required this.date});
}

class UpdateFocusedDay extends CalendarEvent {
  final DateTime date;

  UpdateFocusedDay({required this.date});
}