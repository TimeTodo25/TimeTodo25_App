import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../entity/calendar/day_calendar_data.dart';

enum CalendarStatus { initial, loading, loaded, failed }

class CalendarState extends Equatable {
  final CalendarFormat format;
  final CalendarStatus status;
  final List<DayCalendarData> events;

  const CalendarState({
    required this.format,
    required this.status,
    this.events = const [],
  });

  @override
  List<Object?> get props => [format, status, events];

  CalendarState copyWith({
    CalendarFormat? format,
    CalendarStatus? status,
    List<DayCalendarData>? events,
  }) {
    return CalendarState(
      format: format ?? this.format,
      status: status ?? this.status,
      events: events ?? this.events,
    );
  }
}