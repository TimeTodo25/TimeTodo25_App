import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/date_time_converter.dart';

part 'todo_create_response.freezed.dart';
part 'todo_create_response.g.dart';

@freezed
class TodoCreateResponse with _$TodoCreateResponse {
  factory TodoCreateResponse({
    int? todoIdx,
    @DateTimeIsoConverter()
    required DateTime updateDt,
  }) = _TodoCreateResponse;

  factory TodoCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoCreateResponseFromJson(json);
}