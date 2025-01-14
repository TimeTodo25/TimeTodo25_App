import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'interval_day_todo.freezed.dart';
part 'interval_day_todo.g.dart';

@freezed
class IntervalDayTodo with _$IntervalDayTodo {
  factory IntervalDayTodo({
    required int idx,
    required String content,
    required DateTime startTargetDt,
    required int intervalDay,
    required DateTime createDt,
    DateTime? updateDt,
  }) = _IntervalDayTodo;

  factory IntervalDayTodo.fromJson(Map<String, dynamic> json) =>
      _$IntervalDayTodoFromJson(json);
}
