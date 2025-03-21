import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import '../assets/colors/color.dart';
import '../ui/mypage/category/category_constants.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  // Private constructor to enforce singleton pattern
  DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _instance;
  }

  Future<Database?> get database async {
    try {
      if (_database != null) {
        return _database;
      } else {
        _database = await _initDatabase();
        return _database;
      }
    } catch (e) {
      print('get database 중 오류 발생: $e');
      return null;
    }
  }

  Future<Database> _initDatabase() async {
    try {
      return await openDatabase(
        join(await getDatabasesPath(), 'local.db'),
        version: 1,
        onCreate: (Database db, int version) async {
          print("local.db 생성");

          // 각 테이블 생성
          await _createTodoTable(db);
          await _createCategoryTable(db);
          await _createTimerTable(db);
          await _createDdayTable(db);
          await _createTodayGoalTable(db);
        },
      );
    } catch (e) {
      print('initDatabase 중 오류 발생: $e');
      throw Exception('Failed to initialize database: $e');
    }
  }

  // 투두 테이블 생성
  Future<void> _createTodoTable(Database db) async {
    await db.execute('''
      CREATE TABLE todo(
         idx INTEGER PRIMARY KEY AUTOINCREMENT,
         categoryIdx INTEGER,
         status TEXT,
         userName TEXT,
         content TEXT,
         todoDate TEXT,
         progressStatus INTEGER,
         startStopWtDt TEXT,
         endStopWtDt TEXT,
         startTargetDt TEXT,
         endTargetDt TEXT,
         createDt TEXT,
         updateDt TEXT,
         deleteDt TEXT,
         syncIdx INTEGER,
         syncCategoryIdx INTEGER,
         syncDt TEXT,
         syncStatus TEXT
      )
    ''');
    print("Todo 테이블 생성 완료");
  }

  // 카테고리 테이블 생성
  Future<void> _createCategoryTable(Database db) async {
    await db.execute('''
      CREATE TABLE category(
         idx INTEGER PRIMARY KEY AUTOINCREMENT,
         userName TEXT,
         title TEXT,
         status TEXT,
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
    print("Category 테이블 생성 완료");

    // 기본 카테고리 생성
    await _insertDefaultCategories(db);
  }

  // 타이머 테이블 생성
  Future<void> _createTimerTable(Database db) async {
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
    print("Timer 테이블 생성 완료");
  }

  // 디데이 테이블 생성
  Future<void> _createDdayTable(Database db) async {
    await db.execute('''
      CREATE TABLE dday(
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
      )
    ''');
    print("Dday 테이블 생성 완료");
  }

  // 오늘의 목표 테이블 생성
  Future<void> _createTodayGoalTable(Database db) async {
    await db.execute('''
      CREATE TABLE today_goal(
         idx INTEGER PRIMARY KEY AUTOINCREMENT,
         goalDate TEXT NOT NULL UNIQUE,
         goalText TEXT NOT NULL,
         todayIcon TEXT NOT NULL,
         createDt TEXT,
         updateDt TEXT,
         deleteDt TEXT,
         syncIdx INTEGER,
         syncDt TEXT,
         syncStatus TEXT DEFAULT 'P'
      )
    ''');
    print("TodayGoal 테이블 생성 완료");
  }

  Future<void> _insertDefaultCategories(Database db) async {
    try {
      final defaultCategories = [
        CategoryModel(
            title: '운동',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainBlue),
            publicStatus: VisibilityOption.public,
            syncStatus: 'P'),
        CategoryModel(
            title: '할일',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainRed),
            publicStatus: VisibilityOption.public,
            syncStatus: 'P'),
        CategoryModel(
            title: '공부',
            userName: 'test_user',
            createDt: DateTime.now(),
            categoryColor: ColorUtil.colorToString(mainGreen),
            publicStatus: VisibilityOption.public,
            syncStatus: 'P'),
      ];

      for (var category in defaultCategories) {
        await db.insert('category', category.toJson());
      }
      print("기본 카테고리 삽입 완료");
    } catch (e) {
      print("기본 카테고리 삽입 중 오류 발생: $e");
    }
  }
}