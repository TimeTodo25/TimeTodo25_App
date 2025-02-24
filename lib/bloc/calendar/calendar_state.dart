import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../entity/calendar/category_calendar_data.dart';
import '../../entity/calendar/day_calendar_data.dart';

enum CalendarStatus { initial, loading, loaded, failed }

class CalendarState extends Equatable {
  final CalendarFormat format;
  final CalendarStatus status;
  final List<DayCalendarData> dailyEvents;
  final List<CategoryCalendarData> categories;

  const CalendarState({
    required this.format,
    required this.status,
    this.dailyEvents = const [],
    this.categories = const [],
  });

  @override
  List<Object?> get props => [format, status, dailyEvents, categories];

  CalendarState copyWith({
    CalendarFormat? format,
    CalendarStatus? status,
    List<DayCalendarData>? dailyEvents,
    List<CategoryCalendarData>? categories,
  }) {
    return CalendarState(
      format: format ?? this.format,
      status: status ?? this.status,
      dailyEvents: dailyEvents ?? this.dailyEvents,
      categories: categories ?? this.categories,
    );
  }
}