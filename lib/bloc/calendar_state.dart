import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

// Bloc의 State 정의
class CalendarState {
  final CalendarFormat format;

  CalendarState({required this.format});
}

// CalendarBloc
class CalendarBloc extends Cubit<CalendarState> {
  CalendarBloc()
      : super(CalendarState(format: CalendarFormat.month));

  void toggleFormat() {
    switch (state.format) {
      case CalendarFormat.month:
        emit(CalendarState(format: CalendarFormat.twoWeeks));
        break;
      case CalendarFormat.twoWeeks:
        emit(CalendarState(format: CalendarFormat.week));
        break;
      case CalendarFormat.week:
        emit(CalendarState(format: CalendarFormat.month));
        break;
    }
  }
}