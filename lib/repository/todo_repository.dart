import 'package:sqflite/sqflite.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import '../entity/todo/todo_tbl.dart';
import 'create_table_repository.dart';

class TodoRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  // 모든 투두 가져오기
  Future<List<Todo>> getAllTodo() async {
    final db = await _dbHelper.database;

    if (db == null) return [];

    try {
      final List<Map<String, dynamic>> maps = await db.query('todo');
      return List.generate(maps.length, (i) {
        return Todo.fromJson(maps[i]);
      });
    } catch (e) {
      print("getAllTodo 중 에러 발생 $e");
      return [];
    }
  }

  /// Insert and get the last added todo
  Future<Todo?> insertTodo(Todo todo) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      int id = await db.insert('todo', todo.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);

      final List<Map<String, dynamic>> result = await db.query(
        'todo',
        where: 'idx = ?',
        whereArgs: [id],
        limit: 1,
      );

      if (result.isEmpty) {
        print('insertAndGetLastAddedTodo: 추가된 Todo를 찾을 수 없습니다.');
        return null;
      }

      return Todo.fromJson(result.first);
    } catch (e) {
      print("insertTodo 중 에러 발생 $e");
      return null;
    }
  }

  // 삭제
  Future<void> deleteTodoByIndex(int idx) async {
    final Database? db = await _dbHelper.database;
    if(db == null) return;

    try {
      final now = DateTime.now().toIso8601String();  // 현재 시간을 ISO8601 형식으로 변환

      await db.update(
        'todo',
        {
          'status': 'D',
          'deleteDt': now,  // deleteDt에 현재 시간 추가
        },
        where: 'idx = ? AND status = ?',
        whereArgs: [idx, 'Y'],
      );
      print("Todo 삭제 완료 (idx: $idx)");
    } catch (e) {
      print("deleteTodoByIndex 중 에러 발생: $e");
    }
  }

  // 삭제 상태가 아닌 투두만 가져오기
  Future<List<Todo>> getAllValidTodo() async {
    final Database? db = await _dbHelper.database;
    if(db == null) return [];

    try {
      final List<Map<String, dynamic>> maps = await db.query(
          'todo',
          where: 'status = ?',
          whereArgs: ['Y']
      );

      return List.generate(maps.length, (i) {
        return Todo.fromJson(maps[i]);
      });
    } catch (e) {
      print("getValidTodos 중 에러 발생: $e");
      return [];
    }
  }

  // 삭제 상태가 아닌 특정 날짜 투두만 가져오기
  Future<List<Todo>> getValidTodosByDate(DateTime date) async {
    final Database? db = await _dbHelper.database;
    if(db == null) return [];

    try {
      final DateTime startOfDay = DateTime(date.year, date.month, date.day, 0, 0, 0);
      final DateTime endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);

      final List<Map<String, dynamic>> maps = await db.query(
        'todo',
        where: 'status = ? AND todoDate BETWEEN ? AND ?',
        whereArgs: ['Y', startOfDay.toIso8601String(), endOfDay.toIso8601String()],
      );

      return List.generate(maps.length, (i) {
        return Todo.fromJson(maps[i]);
      });
    } catch (e) {
      print('getValidTodosByDate 중 에러 발생: $e');
      return [];
    }
  }

  Future<Todo?> getTodoByIndex(int idx) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'todo',
        where: 'idx = ?',
        whereArgs: [idx],
        limit: 1,
      );

      if (result.isEmpty) {
        print('해당 idx($idx)에 해당하는 Todo가 없습니다.');
        return null;
      } else {
        return Todo.fromJson(result.first);
      }
    } catch (e) {
      print('getTodoByIndex 중 에러 발생: $e');
      return null;
    }
  }

  Future<void> updateTodo(Todo todo) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      await db.update(
        'todo',
        todo.toJson(),
        where: 'idx = ?',
        whereArgs: [todo.idx],
      );
      print('Todo updated with idx: ${todo.idx}');
    } catch (e) {
      print('updateTodo 중 에러 발생: $e');
    }
  }

  // 변경 되었을 때만 update
  Future<void> updateTodoIfChanged(Todo newTodo) async {
    if (newTodo.idx == null) return;

    try {
      final Todo? oldTodo = await getTodoByIndex(newTodo.idx!);

      if (oldTodo != null && newTodo != oldTodo) {
        await updateTodo(newTodo);
      }
    } catch (e) {
      print('updateTodoIfChanged 중 오류 발생: $e');
    }
  }

  // Update only progress status
  Future<void> updateOnlyProgressStatusByIdx(int todoIdx, int progressStatus) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      await db.update(
        'todo',
        {'progressStatus': progressStatus},
        where: 'idx = ?',
        whereArgs: [todoIdx],
      );
      print('Todo progress status updated: idx=$todoIdx, status=$progressStatus');
    } catch(e) {
      print('updateOnlyProgressStatusByIdx 중 에러 발생: $e');
    }
  }

  // progressStatus 가 0이 아니고, 캘린더의 Month 와 일치하는 투두 가져오기
  Future<List<Todo>> getValidProgressStatusTodosByMonth(DateTime date) async {
    final Database? db = await _dbHelper.database;
    if(db == null) return [];

    final String dateString = DateTimeUtils.formatDate(date).substring(0, 7);

    try {
      final List<Map<String, dynamic>> result = await db.query(
          'todo',
          where: 'SUBSTR(todoDate, 1, 7) = ? AND progressStatus != 0',
          whereArgs: [dateString]
      );

      return List.generate(result.length, (i) {
        return Todo.fromJson(result[i]);
      });
    } catch (e) {
      print('getValidProgressStatusTodosByMonth 중 에러 발생: $e');
      return [];
    }
  }

  // 특정 카테고리 + 특정 날짜의 투두 + 삭제 상태가 아닌 투두 가져오기
  Future<List<Todo>> getDailyTodosByCategory(int categoryIdx, DateTime dateTime) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return [];

    final DateTime startOfDay = DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
    final DateTime endOfDay = DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'todo',
        where: 'categoryIdx = ? AND status = ? AND todoDate BETWEEN ? AND ? ',
        whereArgs: [categoryIdx, 'Y', startOfDay.toIso8601String(), endOfDay.toIso8601String()],
      );

      return List.generate(result.length, (i) {
        return Todo.fromJson(result[i]);
      });
    } catch (e) {
      print('getDailyTodosByCategory 중 에러 발생: $e');
      return [];
    }
  }


  // 가장 마지막에 추가된 Todo 반환
  Future<Todo?> getLastAddedTodo() async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'todo',
        orderBy: 'idx DESC',
        limit: 1,
      );

      if (result.isEmpty) {
        print('추가된 Todo가 없습니다.');
        return null;
      } else {
        return Todo.fromJson(result.first);
      }
    } catch (e) {
      print('getLastAddedTodo 중 에러 발생: $e');
      return null;
    }
  }

  // 가장 마지막에 추가된 Todo의 idx 반환
  Future<int?> getLastTodoIdx() async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.rawQuery(
          'SELECT MAX(idx) AS lastIdx FROM todo'
      );

      if (result.isEmpty || result.first['lastIdx'] == null) {
        print('추가된 Todo가 없습니다.');
        return null;
      } else {
        return result.first['lastIdx'] as int;
      }
    } catch (e) {
      print('getLastTodoIdx 중 에러 발생: $e');
      return null;
    }
  }
}