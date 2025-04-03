import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/today_goal/today_goal_tbl.dart';
import 'package:time_todo/repository/create_table_repository.dart';

class TodayGoalRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  // 삽입
  Future<void> insertTodayGoal(TodayGoal todayGoal) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      int id = await db.insert('today_goal', todayGoal.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);

      final List<Map<String, dynamic>> result = await db.query(
        'today_goal',
        where: 'idx = ?',
        whereArgs: [id],
        limit: 1,
      );

      if (result.isEmpty) {
        print('insertTodayGoal 실패');
        return;
      }

    } catch (e) {
      print("insertTodayGoal 중 에러 발생 $e");
      return;
    }
  }

  // 특정 날짜 목표 가져오기
  Future<TodayGoal?> getTodayGoalByDate(DateTime date) async {
    final Database? db = await _dbHelper.database;
    if(db == null) return null;

    try {
      final DateTime startOfDay = DateTime(date.year, date.month, date.day, 0, 0, 0);
      final DateTime endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);

      final List<Map<String, dynamic>> result = await db.query(
        'today_goal',
        where: 'goalDate BETWEEN ? AND ?',
        whereArgs: [startOfDay.toIso8601String(), endOfDay.toIso8601String()],
      );

      return TodayGoal.fromJson(result.first);
    } catch (e) {
      print('getValidTodosByDate 중 에러 발생: $e');
      return null;
    }
  }
}