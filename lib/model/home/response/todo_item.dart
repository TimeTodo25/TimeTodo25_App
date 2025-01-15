import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/time_info.dart';

part 'todo_item.freezed.dart';
part 'todo_item.g.dart';

@freezed
class TodoItem with _$TodoItem {
  factory TodoItem({
    required int idx,
    required String content,
    required DateTime targetDate,
    required TimeInfo startTargetTm,
    required TimeInfo endTargetTm,
    required DateTime createDt,
    required bool routineYn,
    String? cycleType,
    String? cycleValue,
    String? rm,
    DateTime? routineStartDt,
    DateTime? routineEndDt,
    required TimeInfo todoTotalTm,
  }) = _TodoItem;

  factory TodoItem.fromJson(Map<String, dynamic> json) =>
      _$TodoItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
