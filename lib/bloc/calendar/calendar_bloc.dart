import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(CalendarState(format: CalendarFormat.month)) {
    on<ToggleCalendarFormat>(_toggleFormat);

  }


  // 캘린더 형식 전환
  void _toggleFormat(ToggleCalendarFormat event, Emitter<CalendarState> emit) {
    switch (state.format) {
      case CalendarFormat.month:
        emit(const CalendarState(format: CalendarFormat.twoWeeks));
        break;
      case CalendarFormat.twoWeeks:
        emit(const CalendarState(format: CalendarFormat.week));
        break;
      case CalendarFormat.week:
        emit(const CalendarState(format: CalendarFormat.month));
        break;
    }
  }
}