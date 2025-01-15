// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineUpdateRequestImpl _$$RoutineUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineUpdateRequestImpl(
      idx: (json['idx'] as num).toInt(),
      cycleType: json['cycleType'] as String,
      cycleValue: (json['cycleValue'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      startDt: json['startDt'] == null
          ? null
          : DateTime.parse(json['startDt'] as String),
      endDt: json['endDt'] == null
          ? null
          : DateTime.parse(json['endDt'] as String),
      startTm: json['startTm'] == null
          ? null
          : TimeInfo.fromJson(json['startTm'] as Map<String, dynamic>),
      endTm: json['endTm'] == null
          ? null
          : TimeInfo.fromJson(json['endTm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RoutineUpdateRequestImplToJson(
        _$RoutineUpdateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'cycleType': instance.cycleType,
      'cycleValue': instance.cycleValue,
      'startDt': instance.startDt?.toIso8601String(),
      'endDt': instance.endDt?.toIso8601String(),
      'startTm': instance.startTm,
      'endTm': instance.endTm,
    };
