import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_tbl.freezed.dart';
part 'todo_tbl.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required int idx,
    required int categoryIdx,
    required String userName,
    required String content,
    @Default(0) int status,
    DateTime? startStopWtDt,
    DateTime? endStopWtDt,
    DateTime? startTargetDt,
    DateTime? endTargetDt,
    DateTime? createDt,
    DateTime? updateDt,
    DateTime? deleteDt,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}