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
    required int todoTime,
  }) = _DayCalendarData;
}

// 빈 DayCalendarData 객체 생성 메서드
DayCalendarData emptyDayCalendarData(DateTime date) {
  return DayCalendarData(
    date: date,
    categories: [],
    dailyAchievementRate: 0.0,
    todoCount: 0,
    todoTime: 0,
  );
}