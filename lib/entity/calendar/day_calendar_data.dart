import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_calendar_data.dart';

part 'day_calendar_data.freezed.dart';

@freezed
class DayCalendarData with _$DayCalendarData {
  factory DayCalendarData({
    required DateTime date,
    required List<CategoryCalendarData> categories,
    required double dailyAchievementRate,
    required int todoCount,
    required Duration todoTime,
  }) = _DayCalendarData;
}