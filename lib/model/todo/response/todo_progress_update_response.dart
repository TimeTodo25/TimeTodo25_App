import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_progress_update_response.freezed.dart';
part 'todo_progress_update_response.g.dart';

@freezed
class TodoProgressUpdateResponse with _$TodoProgressUpdateResponse {
  factory TodoProgressUpdateResponse({
    @DateTimeIsoConverter()
    required DateTime updateDt,
  }) = _TodoProgressUpdateResponse;

  factory TodoProgressUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoProgressUpdateResponseFromJson(json);
}