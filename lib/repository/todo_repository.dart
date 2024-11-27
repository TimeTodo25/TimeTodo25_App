import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../entity/todo_tbl.dart';

class TodoRepository {
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
            print("Todo db 생성");
            return db.execute(
              '''CREATE TABLE todo(
               idx INTEGER PRIMARY KEY AUTOINCREMENT,
               category_idx INTEGER,
               user_name TEXT,
               content TEXT,
               start_stop_wt_dt TEXT,
               end_stop_wt_dt TEXT,
               start_target_dt TEXT,
               end_target_dt TEXT,
               create_dt TEXT,
               update_dt TEXT,
               delete_dt TEXT
              )'''
            );
          },
          version: 1);
    } catch (e) {
      print('_initDatabase 중 오류 발생: $e');
      return null;
    }
  }

  static Future<void> insertTodo(Todo todo) async {
    final Database? db = await database;

    if(db != null) {
     try {
       await db.insert(
           'todo',
           todo.toMap(),
           conflictAlgorithm: ConflictAlgorithm.replace
       );
     } catch (e) {
       print("insertTodo 중 에러 발생 $e");
     }
    }
  }

  static Future<void> deleteTodo(int idx) async {
    final Database? db = await database;
    await db?.delete(
        'todo',
      where: 'idx = ?',
      whereArgs: [idx]
    );
  }

  static Future<List<Todo>> getAllTodo() async {
    final Database? db = await database;

    if(db != null) {
      try {
        final List<Map<String, dynamic>> maps = await db.query('todo');
        return List.generate(maps.length, (i) {
          return Todo.fromMap(maps[i]);
        });
      } catch (e) {
        print("getAllTodos 중 에러 발생 $e");
      }
    } return [];
  }
}
