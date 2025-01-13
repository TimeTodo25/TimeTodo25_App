import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

part 'category_tbl.freezed.dart';
part 'category_tbl.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
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
    @JsonKey(name: 'public_status')
    required VisibilityOption publicStatus
  }) = _Category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}