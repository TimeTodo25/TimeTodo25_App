// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineCreateRequestImpl _$$RoutineCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineCreateRequestImpl(
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
    );

Map<String, dynamic> _$$RoutineCreateRequestImplToJson(
        _$RoutineCreateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'cycleType': instance.cycleType,
      'cycleValue': instance.cycleValue,
      'startDt': instance.startDt?.toIso8601String(),
      'endDt': instance.endDt?.toIso8601String(),
    };
