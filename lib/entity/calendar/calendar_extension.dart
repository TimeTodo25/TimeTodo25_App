
// DayCalendarData 리스트를 위한 확장 메서드
import 'package:time_todo/entity/calendar/day_calendar_data.dart';
import 'package:time_todo/entity/calendar/month_calendar_data.dart';

extension DayCalendarDataListExtension on List<DayCalendarData> {
  // 1. 날짜를 월별로 그룹화
  Map<String, List<DayCalendarData>> _groupDaysByMonth() {
    var grouped = <String, List<DayCalendarData>>{};

    for (var day in this) {
      var key = "${day.date.year}-${day.date.month}";
      grouped.putIfAbsent(key, () => []).add(day);
    }

    return grouped;
  }

  // 2. 월별 성취율 계산
  double _calculateMonthlyAchievementRate(List<DayCalendarData> days) {
    if (days.isEmpty) return 0.0;
    return days.map((d) => d.dailyAchievementRate).reduce((a, b) => a + b) / days.length;
  }

  // 3. 월별 총 할일 수 계산
  int _calculateMonthlyTodoCount(List<DayCalendarData> days) {
    return days.fold(0, (sum, d) => sum + d.todoCount);
  }

  // 4. 날짜들로 MonthlyCalendarData 생성
  MonthlyCalendarData _createMonthlyCalendarData(List<DayCalendarData> days) {
    return MonthlyCalendarData(
      year: days.first.date.year,
      month: days.first.date.month,
      days: days,
      monthlyAchievementRate: _calculateMonthlyAchievementRate(days),
      totalTodoCount: _calculateMonthlyTodoCount(days),
      totalTodoTime: 0, // timer 테이블과 연산해야 해서 빈 값으로 둠
    );
  }

  // 메인 함수: 헬퍼 메서드들을 호출
  List<MonthlyCalendarData> groupByMonth() {
    var groupedByMonth = _groupDaysByMonth();

    return groupedByMonth.entries.map((entry) {
      return _createMonthlyCalendarData(entry.value);
    }).toList();
  }
}