import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_create_request.freezed.dart';
part 'routine_create_request.g.dart';

@freezed
class RoutineCreateRequest with _$RoutineCreateRequest {
  factory RoutineCreateRequest({
    required int idx,
    required String cycleType,
    required List<int> cycleValue,
    DateTime? startDt,
    DateTime? endDt,
  }) = _RoutineCreateRequest;

  factory RoutineCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$RoutineCreateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
