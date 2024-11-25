import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoRepository {
  static Database? _database;

  // 데이터베이스에 접근할 때 사용하는 getter
  static Future<Database?> get database async {
    try {
      if (_database != null) {
        return _database!;
      } else {
        _database = await initDatabase();
        return _database!;
      }
    } catch (e) {
      print('get database 중 오류 발생: $e');
      return null;
    }
  }

  // DB 초기화&테이블 생성
  // 파일이 존재하지 않으면, 새로운 데이터베이스 파일을 생성
  static Future<Database?> initDatabase() async {
    try {
      return await openDatabase(
          join(
              await getDatabasesPath(), 'todo.db'
          ),
          onCreate: (Database db, int version) {
            createTodoTable(db);
            print("Todo db 생성되었습니다");
            print(getDatabasesPath());
          },
          version: 1);
    } catch (e) {
      print('_initDatabase 중 오류 발생: $e');
      return null;
    }
  }

  static Future<void> createTodoTable(Database db) async {
    await db.execute(
        '''CREATE TABLE IF NOT EXISTS todo(
               idx INTEGER PRIMARY KEY AUTOINCREMENT,
               user_Idx INTEGER,
               group_Idx INTEGER,
               alarm_Idx INTEGER,
               subject TEXT,
               start_time TEXT NOT NULL,
               end_time TEXT,
               color TEXT NOT NULL,
               notes TEXT,
               public TEXT NOT NULL,
               status TEXT NOT NULL,
               reg_dt TEXT NOT NULL,
               mod_dt TEXT,
               alarmStatus INTEGER NOT NULL,
               isAllDay INTEGER
              )'''
    );
  }
}
