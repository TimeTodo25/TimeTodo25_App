import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../entity/calendar/category_calendar_data.dart';
import '../../entity/calendar/day_calendar_data.dart';

enum CalendarStatus { initial, loading, loaded, failed }
enum CalendarViewContent { todoCount, todoTotalTime  }

class CalendarState extends Equatable {
  final CalendarFormat format; // 캘린더 형식 (1주, 2주, 한달)
  final CalendarStatus status;
  final List<DayCalendarData> dailyEvents;
  final List<CategoryCalendarData> categories; // 캘린더 셀에 띄울 카테고리 데이터
  final CalendarViewContent viewContent; // 캘린더 셀에 나타낼 내용

  const CalendarState({
    required this.format,
    required this.status,
    this.dailyEvents = const [],
    this.categories = const [],
    this.viewContent = CalendarViewContent.todoCount
  });

  @override
  List<Object?> get props => [format, status, dailyEvents, categories, viewContent];

  CalendarState copyWith({
    CalendarFormat? format,
    CalendarStatus? status,
    List<DayCalendarData>? dailyEvents,
    List<CategoryCalendarData>? categories,
    CalendarViewContent? viewContent
  }) {
    return CalendarState(
      format: format ?? this.format,
      status: status ?? this.status,
      dailyEvents: dailyEvents ?? this.dailyEvents,
      categories: categories ?? this.categories,
      viewContent: viewContent ?? this.viewContent
    );
  }
}