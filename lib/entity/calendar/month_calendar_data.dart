import 'package:freezed_annotation/freezed_annotation.dart';
import 'day_calendar_data.dart';

part 'month_calendar_data.freezed.dart';


@freezed
class MonthlyCalendarData with _$MonthlyCalendarData {
  factory MonthlyCalendarData({
    required int year,
    required int month,
    required List<DayCalendarData> days,
    required double monthlyAchievementRate,
    required int totalTodoCount,
    required Duration totalTodoTime,
  }) = _MonthlyCalendarData;
}
