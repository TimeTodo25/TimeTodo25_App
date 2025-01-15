import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/home/response/time_info.dart';

part 'routine_update_request.freezed.dart';
part 'routine_update_request.g.dart';

@freezed
class RoutineUpdateRequest with _$RoutineUpdateRequest {
  factory RoutineUpdateRequest({
    required int idx,
    required String cycleType,
    required List<int> cycleValue,
    DateTime? startDt,
    DateTime? endDt,
    TimeInfo? startTm,
    TimeInfo? endTm,
  }) = _RoutineUpdateRequest;

  factory RoutineUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$RoutineUpdateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
