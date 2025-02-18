import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/utils/color_utils.dart';

import '../entity/category/category_tbl.dart';

class CategoryRepository {
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
      print('get category database 중 오류 발생: $e');
      return null;
    }
  }

  // DB 초기화&테이블 생성
  // 파일이 존재하지 않으면, 새로운 데이터베이스 파일을 생성
  static Future<Database?> initDatabase() async {
    try {
      return await openDatabase(join(await getDatabasesPath(), 'category.db'),
        onCreate: (Database db, int version) async {
          print("Category db 생성");

          // 테이블 생성
          await db.execute('''
          CREATE TABLE category(
             idx INTEGER PRIMARY KEY AUTOINCREMENT,
             userName TEXT,
             title TEXT,
             status INTEGER,         
             categoryColor TEXT,         
             createDt TEXT,
             updateDt TEXT,
             deleteDt TEXT,
             publicStatus TEXT,
             syncIdx INTEGER,
             syncCategoryIdx INTEGER,
             syncDt TEXT,
             syncStatus TEXT
             )
             ''');

          // 기본 카테고리 삽입
          await _insertDefaultCategories(db);
        },
        version: 1,
      );
    } catch (e) {
      print('Category _initDatabase 중 오류 발생: $e');
      return null;
    }
  }

  static Future<void> _insertDefaultCategories(Database db) async {
    try {
      final defaultCategories = [
        CategoryModel(
            title: '운동',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainBlue),
            publicStatus: VisibilityOption.public, syncStatus: 'P'
        ),
        CategoryModel(
            title: '할일',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainRed),
            publicStatus: VisibilityOption.public, syncStatus: 'P'
        ),
        CategoryModel(
            title: '공부',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainGreen),
            publicStatus: VisibilityOption.public, syncStatus: 'P'
        ),
      ];

    for (var category in defaultCategories) {
    await db.insert('category', category.toJson());
    }
      print("기본 카테고리 삽입 완료");
    } catch (e) {
      print("기본 카테고리 삽입 중 오류 발생: $e");
    }
  }

  static Future<void> insertCategory(CategoryModel category) async {
    final Database? db = await database;

    if (db == null) return;

    try {
      await db.insert('category', category.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("category.toJson // ${category.toJson()}");
    } catch (e) {
      print("category insertTodo 중 에러 발생 $e");
    }
  }


  static Future<void> deleteCategoryByIndex(int idx) async {
    final Database? db = await database;

    if(db == null) return;
    db.update(
        'category',
        {'status': 0},
        where: 'idx = ? AND status = ?',
        whereArgs: [idx, 1]
    );
  }

  static Future<List<CategoryModel>> getAllCategory() async {
    final Database? db = await database;

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

  // 삭제 상태가 아닌 투두만 가져오기
  static Future<List<CategoryModel>> getValidCategories() async {
    final Database? db = await database;

    if(db == null) return [];
    try {
      final List<Map<String, dynamic>> maps = await db.query(
          'category',
          where: 'status = ?',
          whereArgs: [1]
      );

      return List.generate(maps.length, (i) {
        return CategoryModel.fromJson(maps[i]);
      });
    } catch (e) {
      print("getValidCategories 중 에러 발생: $e");
      return [];
    }
  }

  static Future<CategoryModel?> getCategoryByIndex(int idx) async {
    final Database? db = await database;

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

  static Future<void> updateCategory(CategoryModel category) async {
    final Database? db = await database;

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
      print('updateTodo 중 에러 발생: $e');
    }
  }

  static Future<void> updateCategoryIfChanged(CategoryModel newCategory) async {
    final Database? db = await database;

    if (db == null) return;

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