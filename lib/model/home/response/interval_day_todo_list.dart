import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'interval_day_todo_list.freezed.dart';
part 'interval_day_todo_list.g.dart';

@freezed
class IntervalDayTodoList with _$IntervalDayTodoList {
  factory IntervalDayTodoList({
    required int idx,
    required String content,
    required DateTime startTargetDt,
    required int intervalDay,
    required DateTime createDt,
    DateTime? updateDt,
  }) = _IntervalDayTodoList;

  factory IntervalDayTodoList.fromJson(Map<String, dynamic> json) =>
      _$IntervalDayTodoListFromJson(json);
}
