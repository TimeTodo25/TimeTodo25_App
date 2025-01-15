import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:time_todo/model/home/response/catagory_list.dart';
import 'package:time_todo/model/home/response/interval_day_todo_list.dart';

part 'home_list_response.freezed.dart';
part 'home_list_response.g.dart';

@freezed
class HomeListResponse with _$HomeListResponse {
  factory HomeListResponse({
    required List<IntervalDayTodoList> dDayList, // 디데이
    required List<CategoryList> categoryList, // 카테고리 > 투두
  }) = _HomeListResponse;

  factory HomeListResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeListResponseFromJson(json);
}
