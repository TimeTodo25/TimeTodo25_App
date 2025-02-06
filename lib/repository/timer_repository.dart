import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';

class TimerRepository {
  static Database? _database;

  // 데이터베이스에 접근할 때 사용하는 getter
  static Future<Database?> get database async {
    try {
      if (_database != null) {
        return _database;
      } else {
        return _database = await initDatabase();
      }
    } catch (e) {
      print('get Timer database 중 오류 발생: $e');
      return null;
    }
  }

  // DB 초기화&테이블 생성
  // 파일이 존재하지 않으면, 새로운 데이터베이스 파일을 생성
  static Future<Database?> initDatabase() async {
    try {
      return await openDatabase(join(await getDatabasesPath(), 'timer.db'),
        onCreate: (Database db, int version) async {
          print("timer db 생성");

          // 테이블 생성
          await db.execute('''
          CREATE TABLE timer(
             idx INTEGER PRIMARY KEY AUTOINCREMENT,
             historyStartDt TEXT,
             historyEndDt TEXT,
             historyType TEXT,
             totalTm TEXT,         
             todoIdx INTEGER,
             status TEXT,           
             syncIdx INTEGER,
             syncCategoryIdx INTEGER,
             syncDt TEXT,
             syncStatus TEXT
          )
        ''');
          },
        version: 1,
      );
    } catch (e) {
      print('timer _initDatabase 중 오류 발생: $e');
      return null;
    }
  }

  static Future<void> insertTimerHistory(List<TimerModel> timerHistories) async {
    final Database? db = await database;

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

  static Future<void> deleteTimerHistoryByTodoIndex(int todoIdx) async {
    final Database? db = await database;

    if(db == null) return;
    db.update(
        'timer',
        {'status': 'D'},
        where: 'todoIdx = ? AND status = ?',
        whereArgs: [todoIdx, 'Y']
    );
  }

  static Future<List<TimerModel>?> getTimerHistoriesByTodoIndex(int todoIdx) async {
    final Database? db = await database;

    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'timer',
        where: 'todoIdx = ?',
        whereArgs: [todoIdx],
        orderBy: 'historyEndDt', // 최신 순 정렬
      );

      return result.map((map) => TimerModel.fromJson(map)).toList();

    } catch (e) {
      print('getTimerHistoryByTodoIndex 중 에러 발생: $e');
      return null;
    }
  }

  static Future<void> updateTimerHistoryIfChanged(List<TimerModel> timerModels) async {
    final Database? db = await database;
    if (db == null) return;

    try {
      await db.transaction((txn) async {
        for (final timer in timerModels) {
          final List<Map<String, dynamic>> existing = await txn.query(
            'timer',
            where: 'idx = ?',
            whereArgs: [timer.idx],
          );

          if (existing.isEmpty) {  // 기존에 없으면 삽입
            await txn.insert('timer', timer.toJson());
          }
        }
      });
    } catch (e) {
      print('updateTimerHistory 중 에러 발생: $e');
    }
  }
}