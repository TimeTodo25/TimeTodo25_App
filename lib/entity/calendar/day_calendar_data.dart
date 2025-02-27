import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_calendar_data.dart';

part 'day_calendar_data.freezed.dart';

@freezed
class DayCalendarData with _$DayCalendarData {
  factory DayCalendarData({
    required DateTime date, // 기준일
    required List<CategoryCalendarData> categories, // 해당일 카테고리 목록
    required double dailyAchievementRate, // 해당일 총 투두 달성률
    required int todoCount, // 해당일 투두 총 개수
    required int todoTime, // 해당일 투두 총 totalTm
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