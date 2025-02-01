import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';

class TimerRepository {
  static Database? _database;

  // 데이터베이스에 접근할 때 사용하는 getter
  static Future<Database?> get database async {
    try {
      if (_database != null) {
        print("1");
        return _database;
      } else {
        print("2");
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
             totalTm TEXT,         
             todoIdx INTEGER,            
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

      print("${timerHistories.length}개의 타이머 기록이 성공적으로 저장되었습니다.");
    } catch (e) {
      print("insertTimerHistory 중 에러 발생: $e");
    }
  }

  static Future<void> deleteTimerHistoryByTodoIndex(int idx) async {
    final Database? db = await database;

    if(db == null) return;
    db.update(
        'timer',
        {'status': 0},
        where: 'idx = ? AND status = ?',
        whereArgs: [idx, 1]
    );
  }

  static Future<TimerModel?> getTimerHistoryByTodoIndex(int idx) async {
    final Database? db = await database;

    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'timer',
        where: 'idx = ?',
        whereArgs: [idx],
        limit: 1,
      );

      if (result.isEmpty) {
        print('해당 idx($idx)에 해당하는 timer가 없습니다.');
        return null;
      } else {
        return TimerModel.fromJson(result.first);
      }

    } catch (e) {
      print('getTimerHistoryByTodoIndex 중 에러 발생: $e');
      return null;
    }
  }

  static Future<void> updateTimerHistory(TimerModel timer) async {
    final Database? db = await database;

    if (db == null) return;

    try {
      await db.update(
        'timer',
        timer.toJson(),
        where: 'idx = ?',
        whereArgs: [timer.idx],
      );
      print('updateTimerHistory with idx: ${timer.idx}');
    } catch (e) {
      print('updateTimerHistory 중 에러 발생: $e');
    }
  }

  static Future<void> updateTimerHistoryIfChanged(TimerModel newCategory) async {
    final Database? db = await database;

    if (db == null) return;

    try {
      final TimerModel? oldCategory = await getTimerHistoryByTodoIndex(newCategory.idx!);

      if (oldCategory != null && newCategory != oldCategory) {
        await updateTimerHistory(newCategory);
      }
    } catch (e) {
      print('updateTimerHistoryIfChanged 중 오류 발생: $e');
    }
  }

}