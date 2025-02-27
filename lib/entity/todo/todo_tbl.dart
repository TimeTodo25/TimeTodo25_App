import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_tbl.freezed.dart';
part 'todo_tbl.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    int? idx,
    required String content,
    required String userName,
    required int categoryIdx,
    @Default("Y") String status,
    required DateTime todoDate,
    @Default(0) int progressStatus, // 투두 달성률 (0, 50, 100)
    DateTime? startStopWtDt,
    DateTime? endStopWtDt,
    DateTime? startTargetDt,
    DateTime? endTargetDt,
    DateTime? createDt,
    DateTime? updateDt,
    DateTime? deleteDt,
    int? syncIdx, // 서버 pk
    int? syncCategoryIdx, // 서버 fk
    DateTime? syncDt, // 서버 동기화 시간
    @Default("P") String syncStatus // 서버 동기화 상태 (P: 준비, S: 완료, F: 실패)
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
