import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_create_request.freezed.dart';
part 'category_create_request.g.dart';

@freezed
class CategoryCreateRequest with _$CategoryCreateRequest {
  factory CategoryCreateRequest({
    required int user_idx,
    required String categoryTitle,
    required String mainColor,
    required String publicStatus,
  }) = _CategoryCreateRequest;

  factory CategoryCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
