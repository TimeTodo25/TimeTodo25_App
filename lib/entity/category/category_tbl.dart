import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_tbl.freezed.dart';
part 'category_tbl.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    int? idx,
    required String title,
    @JsonKey(name: 'user_name')
    required String userName,
    @JsonKey(name: 'main_color')
    required String categoryColor,
    @Default(1)
    int status,
    @JsonKey(name: 'create_dt')
    DateTime? createDt,
    @JsonKey(name: 'update_dt')
    DateTime? updateDt,
    @JsonKey(name: 'delete_dt')
    DateTime? deleteDt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}