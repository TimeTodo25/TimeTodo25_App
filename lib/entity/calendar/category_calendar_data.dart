import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../todo/todo_tbl.dart';
part 'category_calendar_data.freezed.dart';


@freezed
class CategoryCalendarData with _$CategoryCalendarData {
  factory CategoryCalendarData({
    required int categoryId,
    required List<Todo> todos,
    required double achievementRate,
    required int todoCount,
    required int todoTime,
    required Color categoryColor
  }) = _CategoryCalendarData;
}