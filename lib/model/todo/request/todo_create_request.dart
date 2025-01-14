import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_create_request.freezed.dart';
part 'todo_create_request.g.dart';

@freezed
class TodoCreateRequest with _$TodoCreateRequest {
  factory TodoCreateRequest({
    required String content,
    required int categoryIdx, // 카테고리 idx
    required DateTime date, // 투두 일시
    DateTime? startTargetTm,
    DateTime? endTargetTm,
  }) = _TodoCreateRequest;

  factory TodoCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoCreateRequestFromJson(json);
}
