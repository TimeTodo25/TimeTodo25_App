import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/todo_item.dart';

part 'catagory_list.freezed.dart';
part 'catagory_list.g.dart';

@freezed
class CategoryList with _$CategoryList {
  factory CategoryList({
    required int idx,
    required String title,
    required String mainColor,
    required String publicStatus,
    required DateTime createDt,
    DateTime? updateDt,
    required List<TodoItem> todos,
  }) = _CategoryList;

  factory CategoryList.fromJson(Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);
}
