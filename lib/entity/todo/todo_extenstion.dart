import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';
import 'package:time_todo/entity/calendar/day_calendar_data.dart';
import 'package:time_todo/entity/calendar/month_calendar_data.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';

// Todo List 기본 확장 메서드
extension TodoListExtension on List<Todo> {
  // Day 관련 메서드들
  // 1. 투두 리스트를 '날짜별'로 그룹화
  Map<DateTime, List<Todo>> _groupTodosByDay() {
    var grouped = <DateTime, List<Todo>>{};

    for (var todo in this) {
      var date = DateTime(todo.todoDate.year, todo.todoDate.month, todo.todoDate.day);
      grouped.putIfAbsent(date, () => []).add(todo);
    }

    return grouped;
  }
  // 2. 주어진 Todo 리스트의 일별 성취율 계산
  double _calculateDailyAchievementRate(List<Todo> todos) {
    if (todos.isEmpty) return 0.0;
    var totalProgress = todos.fold(0, (sum, todo) => sum + todo.progressStatus);
    return totalProgress / todos.length;
  }

  // 3. 주어진 Todo 리스트의 총 할일 개수 계산
  int _calculateTotalTodoCount(List<Todo> todos) {
    return todos.length;
  }

  // 4. 날짜와 해당 날짜의 투두 리스트를 받아 DayCalendarData 생성
  DayCalendarData _createDayCalendarData(DateTime date, List<Todo> todos) {
    // 할일을 카테고리별로 그룹화
    var categories = todos.groupByCategory();
    
    return DayCalendarData(
      date: date,
      categories: categories,
      dailyAchievementRate: _calculateDailyAchievementRate(todos),
      todoCount: _calculateTotalTodoCount(todos),
      todoTime: 0 // timer 테이블과 연산해야 해서 빈 값으로 둠
    );
  }

  // Todo -> CategoryCalendarData
  // 메인 함수: 헬퍼 메서드들을 호출
  // 투두 리스트를 날짜별로 그룹화하고 DayCalendarData 리스트로 변환
  List<DayCalendarData> groupByDay() {
    var groupedByDay = _groupTodosByDay();

    return groupedByDay.entries.map((entry) {
      return _createDayCalendarData(entry.key, entry.value);
    }).toList();
  }

  // Category 관련 메서드들
  // 1. 투두 리스트를 '카테고리별'로 그룹화
  Map<int, List<Todo>> _groupTodosByCategory() {
    var grouped = <int, List<Todo>>{};
    
    for (var todo in this) {
      grouped.putIfAbsent(todo.categoryIdx, () => []).add(todo);
    }

    return grouped;
  }

  // 2. 카테고리 내 할일들의 성취율 계산
  double _calculateCategoryAchievementRate(List<Todo> todos) {
    if (todos.isEmpty) return 0.0;
    return todos.map((t) => t.progressStatus).reduce((a, b) => a + b) / todos.length;
  }

  // todoList 의 모든 todoIdx 만 추출
  List<int?> getTodoIdxList() {
    // final todoIds = todos.map((todo) => todo.idx).whereType<int>().toSet().toList();
    return map((todo) => todo.idx).toSet().toList();
  }

  // 4. 카테고리 ID와 할일로 CategoryCalendarData 생성
  CategoryCalendarData _createCategoryCalendarData(int categoryId, List<Todo> todos) {
    return CategoryCalendarData(
      categoryId: categoryId,
      todos: todos,
      achievementRate: _calculateCategoryAchievementRate(todos),
      todoCount: todos.length,
      todoTime: 0, // timer 테이블과 연산해야 해서 빈 값으로 둠
      categoryColor: mainBlue,
    );
  }

  // 메인 함수: 헬퍼 메서드들을 호출
  List<CategoryCalendarData> groupByCategory() {
    var groupedByCategory = _groupTodosByCategory();

    return groupedByCategory.entries.map((entry) {
      return _createCategoryCalendarData(entry.key, entry.value);
    }).toList();
  }
}

// DayCalendarData 리스트를 위한 확장 메서드
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