import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_create_request.freezed.dart';
part 'todo_create_request.g.dart';

@freezed
class TodoCreateRequest with _$TodoCreateRequest {
  factory TodoCreateRequest({
    required String content,
    required int categoryIdx, // 카테고리 idx

    @DateOnlyConverter()
    required DateTime date,

    @NullableTimeConverter()
    DateTime? startTargetTm,

    @NullableTimeConverter()
    DateTime? endTargetTm,
  }) = _TodoCreateRequest;

  factory TodoCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoCreateRequestFromJson(json);
}