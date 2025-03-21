import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/category/category_tbl.dart';

import 'create_table_repository.dart';

class CategoryRepository {
  // Use the DatabaseHelper singleton
  final DatabaseHelper _dbHelper = DatabaseHelper();

  // 카테고리 추가
  Future<void> insertCategory(CategoryModel category) async {
    final Database? db = await _dbHelper.database;

    if (db == null) return;

    try {
      await db.insert('category', category.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("category.toJson // ${category.toJson()}");
    } catch (e) {
      print("category insertTodo 중 에러 발생 $e");
    }
  }

  // 카테고리 삭제
  Future<void> deleteCategoryByIndex(int idx) async {
    final Database? db = await _dbHelper.database;

    if (db == null) return;

    try {
      await db.update('category', {'status': 'D'},
          where: 'idx = ? AND status = ?', whereArgs: [idx, 'Y']);
      print("카테고리 삭제 완료 (idx: $idx)");
    } catch (e) {
      print("deleteCategoryByIndex 중 에러 발생: $e");
    }
  }

  // 모든 카테고리 조회
  Future<List<CategoryModel>> getAllCategory() async {
    final Database? db = await _dbHelper.database;

    if (db == null) return [];

    try {
      final List<Map<String, dynamic>> maps = await db.query('category');
      return List.generate(maps.length, (i) {
        return CategoryModel.fromJson(maps[i]);
      });
    } catch (e) {
      print("getAllCategory 중 에러 발생 $e");
      return [];
    }
  }

  // 삭제 상태가 아닌 카테고리만 가져오기
  Future<List<CategoryModel>> getValidCategories() async {
    final Database? db = await _dbHelper.database;

    if (db == null) return [];

    try {
      final List<Map<String, dynamic>> maps =
      await db.query('category', where: 'status = ?', whereArgs: ['Y']);

      return List.generate(maps.length, (i) {
        return CategoryModel.fromJson(maps[i]);
      });
    } catch (e) {
      print("getValidCategories 중 에러 발생: $e");
      return [];
    }
  }

  // 특정 인덱스의 카테고리 조회
  Future<CategoryModel?> getCategoryByIndex(int idx) async {
    final Database? db = await _dbHelper.database;

    if (db == null) return null;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'category',
        where: 'idx = ?',
        whereArgs: [idx],
        limit: 1,
      );

      if (result.isEmpty) {
        print('해당 idx($idx)에 해당하는 category가 없습니다.');
        return null;
      } else {
        return CategoryModel.fromJson(result.first);
      }
    } catch (e) {
      print('getCategoryByIndex 중 에러 발생: $e');
      return null;
    }
  }

  // 카테고리 업데이트
  Future<void> updateCategory(CategoryModel category) async {
    final Database? db = await _dbHelper.database;

    if (db == null) return;

    try {
      await db.update(
        'category',
        category.toJson(),
        where: 'idx = ?',
        whereArgs: [category.idx],
      );
      print('category updated with idx: ${category.idx}');
    } catch (e) {
      print('updateCategory 중 에러 발생: $e');
    }
  }

  // 카테고리 변경 시에만 업데이트
  Future<void> updateCategoryIfChanged(CategoryModel newCategory) async {
    if (newCategory.idx == null) return;

    try {
      final CategoryModel? oldCategory = await getCategoryByIndex(newCategory.idx!);

      if (oldCategory != null && newCategory != oldCategory) {
        await updateCategory(newCategory);
      }
    } catch (e) {
      print('updateCategoryIfChanged 중 오류 발생: $e');
    }
  }
}