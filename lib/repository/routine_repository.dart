import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/entity/routine/routine_tbl.dart';
import 'package:time_todo/repository/create_table_repository.dart';

class RoutineRepository {
  // static Database? _database;
  final DatabaseHelper _dbHelper = DatabaseHelper();

  // 상태가 D 가 아닌 카테고리 가져오기
  Future<List<CategoryModel>> getCategoryList() async {
    final Database? db = await _dbHelper.database;
    if (db == null) return [];

    try {
      final List<Map<String, dynamic>> maps = await db.query(
        'category',
        where: 'status != ?',
        whereArgs: ['D'],
      );
      return List.generate(maps.length, (i) {
        return CategoryModel.fromJson(maps[i]);
      });
    } catch (e) {
      print("getCategoryList 중 에러 발생 ${e.toString()}");
      return [];
    }
  }

  // 루틴 리스트 조회
  Future<List<Routine>> getRoutineList() async {
    final Database? db = await _dbHelper.database;
    if (db == null) return [];

    try {
      // 상태가 D 가 아닌 루틴 가져오기
      final List<Map<String, dynamic>> maps = await db.query(
        'routine',
        where: 'status != ?',
        whereArgs: ['D'],
      );
      return List.generate(maps.length, (i) {
        return Routine.fromJson(maps[i]);
      });
    } catch (e) {
      print("getRoutineList 중 에러 발생 ${e.toString()}");
      return [];
    }
  }

  // 루틴 상세 조회
  Future<Routine?> getRoutineDetail(int idx) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> maps = await db.query(
        'routine',
        where: 'idx = ?',
        whereArgs: [idx],
        limit: 1,
      );

      if (maps.isEmpty) {
        print('해당 idx($idx)에 해당하는 루틴이 없습니다.');
        return null;
      } else {
        return Routine.fromJson(maps.first);
      }
    } catch (e) {
      print('getRoutineDetail 중 에러 발생: ${e.toString()}');
      return null;
    }
  }

  // 루틴 등록
  Future<Routine?> insertRoutine(Routine routine) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return null;

    try {
      final int newId = await db.insert(
        'routine',
        routine.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final result = await db.query(
        'routine',
        where: 'idx = ?',
        whereArgs: [newId],
      );
      if (result.isNotEmpty) {
        return Routine.fromJson(result.first);
      }
      return null;
      // await db.insert('dday', dday.toJson(),
      //     conflictAlgorithm: ConflictAlgorithm.replace);
      // return dday;
    } catch (e) {
      print('루틴 insertRoutine 중 오류 발생: ${e.toString()}');
      return null;
    }
  }

  // 루틴 수정
  Future<void> updateRoutine(Routine routine) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;
    print('루틴 updateRoutine 호출: ${routine.toJson()}');

    try {
      await db.update(
        'routine',
        routine.toJson(),
        where: 'idx = ?',
        whereArgs: [routine.idx],
      );
    } catch (e) {
      print('루틴 updateRoutine 중 오류 발생: ${e.toString()}');
    }
  }

  // 루틴 삭제
  Future<void> deleteRoutine(int idx) async {
    final Database? db = await _dbHelper.database;
    if (db == null) return;

    try {
      await db.update(
        'routine',
        {'status': 'D'},
        where: 'idx = ?',
        whereArgs: [idx],
      );
    } catch (e) {
      print('루틴 deleteRoutine 중 오류 발생: ${e.toString()}');
    }
  }
}
