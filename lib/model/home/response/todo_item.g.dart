// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoItemImpl _$$TodoItemImplFromJson(Map<String, dynamic> json) =>
    _$TodoItemImpl(
      idx: (json['idx'] as num).toInt(),
      content: json['content'] as String,
      targetDate: DateTime.parse(json['targetDate'] as String),
      startTargetTm:
          TimeInfo.fromJson(json['startTargetTm'] as Map<String, dynamic>),
      endTargetTm:
          TimeInfo.fromJson(json['endTargetTm'] as Map<String, dynamic>),
      createDt: DateTime.parse(json['createDt'] as String),
      routineYn: json['routineYn'] as bool,
      cycleType: json['cycleType'] as String?,
      cycleValue: json['cycleValue'] as String?,
      rm: json['rm'] as String?,
      routineStartDt: json['routineStartDt'] == null
          ? null
          : DateTime.parse(json['routineStartDt'] as String),
      routineEndDt: json['routineEndDt'] == null
          ? null
          : DateTime.parse(json['routineEndDt'] as String),
      todoTotalTm:
          TimeInfo.fromJson(json['todoTotalTm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TodoItemImplToJson(_$TodoItemImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'targetDate': instance.targetDate.toIso8601String(),
      'startTargetTm': instance.startTargetTm,
      'endTargetTm': instance.endTargetTm,
      'createDt': instance.createDt.toIso8601String(),
      'routineYn': instance.routineYn,
      'cycleType': instance.cycleType,
      'cycleValue': instance.cycleValue,
      'rm': instance.rm,
      'routineStartDt': instance.routineStartDt?.toIso8601String(),
      'routineEndDt': instance.routineEndDt?.toIso8601String(),
      'todoTotalTm': instance.todoTotalTm,
    };
