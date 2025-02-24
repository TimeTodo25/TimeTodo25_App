import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';
import 'package:time_todo/ui/todo/todo_extenstion.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const CalendarState(format: CalendarFormat.month, status: CalendarStatus.initial)) {
    on<ToggleCalendarFormat>(_toggleFormat);
    on<FetchCalendar>(_fetchCalendarByTodoData);

  }

  // 캘린더 형식 전환
  void _toggleFormat(ToggleCalendarFormat event, Emitter<CalendarState> emit) {
    switch (state.format) {
      case CalendarFormat.month:
        emit(state.copyWith(format: CalendarFormat.month));
        break;
      case CalendarFormat.twoWeeks:
        emit(state.copyWith(format: CalendarFormat.twoWeeks));
        break;
      case CalendarFormat.week:
        emit(state.copyWith(format: CalendarFormat.week));
        break;
    }
  }


  // 투두 -> Calendar Event로 변환
  void _fetchCalendarByTodoData(FetchCalendar event, Emitter<CalendarState> emit) {
    emit(state.copyWith(status: CalendarStatus.loading));

    // 투두 데이터를 날짜별로 그룹화
    final events = event.todos.groupByDay();

    emit(state.copyWith(
      status: CalendarStatus.loaded,
      events: events,
    ));
  }
}