import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'routine_create_response.freezed.dart';
part 'routine_create_response.g.dart';

@freezed
class RoutineCreateResponse with _$RoutineCreateResponse {
  factory RoutineCreateResponse({
    required int idx,
    required String cycleType,
    required String rm,
    required DateTime createDt,
    required DateTime updateDt,
  }) = _RoutineCreateResponse;

  factory RoutineCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$RoutineCreateResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
