// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineCreateResponseImpl _$$RoutineCreateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineCreateResponseImpl(
      idx: (json['idx'] as num).toInt(),
      cycleType: json['cycleType'] as String,
      rm: json['rm'] as String,
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: DateTime.parse(json['updateDt'] as String),
    );

Map<String, dynamic> _$$RoutineCreateResponseImplToJson(
        _$RoutineCreateResponseImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'cycleType': instance.cycleType,
      'rm': instance.rm,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt.toIso8601String(),
    };
