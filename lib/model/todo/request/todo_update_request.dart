import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_update_request.freezed.dart';
part 'todo_update_request.g.dart';

@freezed
class TodoUpdateRequest with _$TodoUpdateRequest {
  factory TodoUpdateRequest({
    required int idx,
    required String content,
    required DateTime targetDate, // 투두 일시
    DateTime? startTargetTm,
    DateTime? endTargetTm,
  }) = _TodoUpdateRequest;

  factory TodoUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoUpdateRequestFromJson(json);
}
