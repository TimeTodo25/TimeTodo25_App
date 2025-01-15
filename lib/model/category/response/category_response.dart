import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  factory CategoryResponse({
    required int idx,
    required String categoryTitle,
    required String mainColor,
    required String publicStatus,
    required DateTime createDt,
    required DateTime updateDt,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
