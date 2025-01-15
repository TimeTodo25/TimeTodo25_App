import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_update_request.freezed.dart';
part 'category_update_request.g.dart';

@freezed
class CategoryUpdateRequest with _$CategoryUpdateRequest {
  factory CategoryUpdateRequest({
    required int idx,
    required String categoryTitle,
    required String publicStatus,
    required String mainColor,
  }) = _CategoryUpdateRequest;

  factory CategoryUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
