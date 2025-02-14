import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../entity/d_day/d_day_tbl.dart';

class DdayRepository {
  static Database? _database;

  // 로컬 디비 접근 시 사용하는 getter
  static Future<Database?> get database async {
    try {
      if (_database != null) {
        return _database;
      } else {
        return _database = await initDatabase();
      }
    } catch (e) {
      print('디데이 get database 중 오류 발생: ${e.toString()}');
      return null;
    }
  }

  // 디데이 디비 초기화
  static Future<Database?> initDatabase() async {
    try {
      return await openDatabase(join(await getDatabasesPath(), 'dday.db'),
          onCreate: (Database db, int version) {
        print("Dday db 생성");
        return db.execute('''CREATE TABLE dday(
               idx INTEGER PRIMARY KEY AUTOINCREMENT,
               syncIdx INTEGER,
               content TEXT,
               targetDt DATE,
               targetDelStatus TEXT,
               createDt DATETIME,
               updateDt DATETIME,
               status TEXT,
               syncStatus TEXT,
               syncDt DATETIME
               )''');
      }, version: 1);
    } catch (e) {
      print('디데이 initDatabase 중 오류 발생: ${e.toString()}');
      return null;
    }
  }

  // 디데이 리스트 조회
  static Future<List<Dday>> getDdayList() async {
    final Database? db = await database;
    if (db == null) return [];

    try {
      // 상태가 D 가 아닌 디데이만 가져오기
      final List<Map<String, dynamic>> maps = await db.query(
        'dday',
        where: 'status != ?',
        whereArgs: ['D'],
      );
      return List.generate(maps.length, (i) {
        return Dday.fromJson(maps[i]);
      });
    } catch (e) {
      print("getAllDday 중 에러 발생 ${e.toString()}");
      return [];
    }
  }

  // 디데이 상세 조회
  static Future<Dday?> getDdayDetail(int idx) async {
    final Database? db = await database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> maps = await db.query(
        'dday',
        where: 'idx = ?',
        whereArgs: [idx],
        limit: 1,
      );

      if (maps.isEmpty) {
        print('해당 idx($idx)에 해당하는 디데이가 없습니다.');
        return null;
      } else {
        return Dday.fromJson(maps.first);
      }
    } catch (e) {
      print('getDdayDetail 중 에러 발생: ${e.toString()}');
      return null;
    }
  }

  // 디데이 등록
  static Future<Dday?> insertDday(Dday dday) async {
    final Database? db = await database;
    if (db == null) return null;

    try {
      final int newId = await db.insert(
        'dday',
        dday.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final result = await db.query(
        'dday',
        where: 'idx = ?',
        whereArgs: [newId],
      );
      if (result.isNotEmpty) {
        return Dday.fromJson(result.first);
      }
      return null;
      // await db.insert('dday', dday.toJson(),
      //     conflictAlgorithm: ConflictAlgorithm.replace);
      // return dday;
    } catch (e) {
      print('디데이 insertDday 중 오류 발생: ${e.toString()}');
      return null;
    }
  }

  // 디데이 수정
  static Future<void> updateDday(Dday dday) async {
    final Database? db = await database;
    if (db == null) return;
    print('디데이 updateDday 호출: ${dday.toJson()}');

    try {
      await db.update(
        'dday',
        dday.toJson(),
        where: 'idx = ?',
        whereArgs: [dday.idx],
      );
    } catch (e) {
      print('디데이 updateDday 중 오류 발생: ${e.toString()}');
    }
  }

  // 디데이 삭제
  static Future<void> deleteDday(int idx) async {
    final Database? db = await database;
    if (db == null) return;

    try {
      await db.update(
        'dday',
        {'status': 'D'},
        where: 'idx = ?',
        whereArgs: [idx],
      );
    } catch (e) {
      print('디데이 deleteDday 중 오류 발생: ${e.toString()}');
    }
  }
}
