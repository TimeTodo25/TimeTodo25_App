import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo_create_response.freezed.dart';
part 'todo_create_response.g.dart';

@freezed
class TodoCreateResponse with _$TodoCreateResponse {
  factory TodoCreateResponse({
    required int idx,
    required String categoryTitle,
    required DateTime createDt,
    required DateTime updateDt,
  }) = _TodoCreateResponse;

  factory TodoCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoCreateResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
