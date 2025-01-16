import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'd_day_create_request.freezed.dart';
part 'd_day_create_request.g.dart';

@freezed
class DdayCreateRequest with _$DdayCreateRequest {
  factory DdayCreateRequest({
    required int userIdx, // 스웨거에 아직 없음
    required String content, // 이거 왜 스웨거에 int로 되어있/?
    required DateTime targetDt,
    required bool targetDelYn, // 이거 뭐하는친구임..?
  }) = _DdayCreateRequest;

  factory DdayCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$DdayCreateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
