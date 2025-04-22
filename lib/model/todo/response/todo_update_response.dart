import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_update_response.freezed.dart';
part 'todo_update_response.g.dart';

@freezed
class TodoUpdateResponse with _$TodoUpdateResponse {
  factory TodoUpdateResponse({
    @DateTimeIsoConverter()
    required DateTime updateDt,
  }) = _TodoUpdateResponse;

  factory TodoUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoUpdateResponseFromJson(json);
}