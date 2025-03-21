import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

import 'create_table_repository.dart';

class TimerRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<void> insertTimerHistory(List<TimerModel> timerHistories) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      // 트랜잭션을 사용하여 여러 레코드 삽입
      await db.transaction((txn) async {
        for (final timer in timerHistories) {
          await txn.insert(
            'timer',
            timer.toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      });
    } catch (e) {
      print("insertTimerHistory 중 에러 발생: $e");
    }
  }

  Future<void> deleteTimerHistoryByTodoIndex(int todoIdx) async {
    final Database? db = await _dbHelper.database;
    if(db == null) return;

    db.update(
        'timer',
        {'status': 'D'},
        where: 'todoIdx = ? AND status = ?',
        whereArgs: [todoIdx, 'Y']
    );
  }

  // todoIdx 가 일치하면서 삭제되지 않은 timer 가져오기
  Future<List<TimerModel>?> getTimerHistoriesByTodoIndex(int todoIdx) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'timer',
        where: 'todoIdx = ? AND status = ?',
        whereArgs: [todoIdx,'Y'],
        orderBy: 'historyEndDt', // 최신 순 정렬
      );

      return result.map((map) => TimerModel.fromJson(map)).toList();

    } catch (e) {
      print('getTimerHistoryByTodoIndex 중 에러 발생: $e');
      return null;
    }
  }

  // 삭제되지 않은 timer 모두 가져오기
  Future<List<TimerModel>?> getAllValidTimerHistory() async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'timer',
        where: 'status = ?',
        whereArgs: ['Y'],
      );

      return result.map((map) => TimerModel.fromJson(map)).toList();

    } catch (e) {
      print('getAllValidTimerHistory 중 에러 발생: $e');
      return null;
    }
  }

  // 해당 날짜의 유효한 timer 모두 가져오기
  Future<List<TimerModel>> getAllValidTimerHistoryByDate(DateTime dateTime) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return [];

    final DateTime startOfDay = DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
    final DateTime endOfDay = DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'timer',
        where: 'status = ? AND historyStartDt BETWEEN ? AND ?',
        whereArgs: ['Y', startOfDay.toIso8601String(), endOfDay.toIso8601String()],
      );

      return result.map((map) => TimerModel.fromJson(map)).toList();

    } catch (e) {
      print('getAllValidTimerHistory 중 에러 발생: $e');
      return [];
    }
  }

  /// 해당 월과 todoIdx 목록으로 타이머 히스토리 필터링 및 날짜별 totalTm 합산
  Future<Map<String, int>> getMonthlyTotalTmByDate(List<int> todoIdxList, DateTime date) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return {};

    final String dateString = DateTimeUtils.formatDate(date).substring(0, 7);

    try {
      List<Map<String, dynamic>> timerHistory = await db.query(
        'timer',
        columns: ['historyStartDt', 'totalTm'],
        where: 'status = ? AND todoIdx IN (${todoIdxList.join(", ")}) AND SUBSTR(historyStartDt, 1, 7) = ?',
        whereArgs: ['Y', dateString],
      );

      Map<String, int> totalTmByDate = {};

      for (var entry in timerHistory) {
        String dateKey = entry['historyStartDt'].substring(0, 10); // yyyy-MM-dd 형식 추출
        int totalTm = int.tryParse(entry['totalTm'] ?? '0') ?? 0;

        if (totalTmByDate.containsKey(dateKey)) {
          totalTmByDate[dateKey] = totalTmByDate[dateKey]! + totalTm;
        } else {
          totalTmByDate[dateKey] = totalTm;
        }
      }

      return totalTmByDate;
    } catch (e) {
      print('getMonthlyTotalTmByDate 중 에러 발생: $e');
      return {};
    }
  }

  // idx 초기화
  Future<int> initializeIdx() async {
    final Database? db = await _dbHelper.database;
    if(db == null) return 0;

    final result = await db.query(
      'timer',
      columns: ['MAX(idx) as maxIdx'], // 가장 큰 idx 값 조회
    );

    return result.isNotEmpty ? (result.first['maxIdx'] as int? ?? 0) : 0;
  }

  Future<void> updateTimerHistoryIfChanged(List<TimerModel> timerModels) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      await db.transaction((txn) async {
        for (final timer in timerModels) {
          final List<Map<String, dynamic>> existing = await txn.query(
            'timer',
            where: 'todoIdx = ? AND historyStartDt = ?',
            whereArgs: [timer.todoIdx, timer.historyStartDt],
          );

          if (existing.isEmpty) {  // 조건에 맞는 레코드가 없으면 삽입
            await txn.insert('timer', timer.toJson());
          }
        }
      });
    } catch (e) {
      print('updateTimerHistory 중 에러 발생: $e');
    }
  }
}