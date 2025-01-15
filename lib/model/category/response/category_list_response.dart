import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/catagory_list.dart';

part 'category_list_response.freezed.dart';
part 'category_list_response.g.dart';

@freezed
class CategoryListResponse with _$CategoryListResponse {
  factory CategoryListResponse({
    required List<CategoryList> categoryList,
  }) = _CategoryListResponse;

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
