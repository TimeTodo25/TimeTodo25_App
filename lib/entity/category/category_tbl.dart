import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

part 'category_tbl.freezed.dart';
part 'category_tbl.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    int? idx,
    required String title,
    required String userName,
    required String categoryColor,
    @Default(1) int status,
    DateTime? createDt,
    DateTime? updateDt,
    DateTime? deleteDt,
    required VisibilityOption publicStatus,
    int? syncIdx, // 서버 pk
    int? syncCategoryIdx, // 서버 fk
    DateTime? syncDt, // 서버 동기화 시간
    @Default("P") String syncStatus // 서버 동기화 상태 (P: 준비, S: 완료, F: 실패)
}) = _Category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}