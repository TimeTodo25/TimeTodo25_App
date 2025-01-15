import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_info.freezed.dart';
part 'time_info.g.dart';

@freezed
class TimeInfo with _$TimeInfo {
  factory TimeInfo({
    required int hour,
    required int minute,
    required int second,
  }) = _TimeInfo;

  factory TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
