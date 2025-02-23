import '../../entity/calendar/category_calendar_data.dart';
import '../../entity/calendar/day_calendar_data.dart';
import '../../entity/calendar/month_calendar_data.dart';
import '../../entity/todo/todo_tbl.dart';

extension TodoExtensions on List<Todo> {
  // Todo -> CategoryCalendarData
  List<CategoryCalendarData> groupByCategory() {
    var grouped = <int, List<Todo>>{};

    for (var todo in this) {
      grouped.putIfAbsent(todo.categoryIdx, () => []).add(todo);
    }

    return grouped.entries.map((entry) {
      var categoryTodos = entry.value;
      var achievementRate = categoryTodos.map((t) => t.progressStatus).reduce((a, b) => a + b) / (categoryTodos.length * 100);
      var todoCount = categoryTodos.length;
      var todoTime = categoryTodos.fold(Duration.zero, (sum, todo) {
        if (todo.startTargetDt != null && todo.endTargetDt != null) {
          return sum + todo.endTargetDt!.difference(todo.startTargetDt!);
        }
        return sum;
      });

      return CategoryCalendarData(
        categoryId: entry.key,
        todos: categoryTodos,
        achievementRate: achievementRate,
        todoCount: todoCount,
        todoTime: todoTime,
      );
    }).toList();
  }

  // CategoryCalendarData -> DayCalendarData
  List<DayCalendarData> groupByDay() {
    var grouped = <DateTime, List<Todo>>{};

    for (var todo in this) {
      var date = DateTime(todo.todoDate.year, todo.todoDate.month, todo.todoDate.day);
      grouped.putIfAbsent(date, () => []).add(todo);
    }

    return grouped.entries.map((entry) {
      var categories = entry.value.groupByCategory();
      var dailyAchievementRate = categories.map((c) => c.achievementRate).reduce((a, b) => a + b) / categories.length;
      var todoCount = categories.fold(0, (sum, c) => sum + c.todoCount);
      var todoTime = categories.fold(Duration.zero, (sum, c) => sum + c.todoTime);

      return DayCalendarData(
        date: entry.key,
        categories: categories,
        dailyAchievementRate: dailyAchievementRate,
        todoCount: todoCount,
        todoTime: todoTime,
      );
    }).toList();
  }

  // DayCalendarData -> MonthlyCalendarData
  List<MonthlyCalendarData> groupByMonth() {
    var grouped = <String, List<DayCalendarData>>{};

    for (var day in this.groupByDay()) {
      var key = "${day.date.year}-${day.date.month}";
      grouped.putIfAbsent(key, () => []).add(day);
    }

    return grouped.entries.map((entry) {
      var days = entry.value;
      var year = days.first.date.year;
      var month = days.first.date.month;
      var monthlyAchievementRate = days.map((d) => d.dailyAchievementRate).reduce((a, b) => a + b) / days.length;
      var totalTodoCount = days.fold(0, (sum, d) => sum + d.todoCount);
      var totalTodoTime = days.fold(Duration.zero, (sum, d) => sum + d.todoTime);

      return MonthlyCalendarData(
        year: year,
        month: month,
        days: days,
        monthlyAchievementRate: monthlyAchievementRate,
        totalTodoCount: totalTodoCount,
        totalTodoTime: totalTodoTime,
      );
    }).toList();
  }
}