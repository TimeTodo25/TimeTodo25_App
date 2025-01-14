// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_day_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntervalDayTodoImpl _$$IntervalDayTodoImplFromJson(
        Map<String, dynamic> json) =>
    _$IntervalDayTodoImpl(
      idx: (json['idx'] as num).toInt(),
      content: json['content'] as String,
      startTargetDt: DateTime.parse(json['startTargetDt'] as String),
      intervalDay: (json['intervalDay'] as num).toInt(),
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: json['updateDt'] == null
          ? null
          : DateTime.parse(json['updateDt'] as String),
    );

Map<String, dynamic> _$$IntervalDayTodoImplToJson(
        _$IntervalDayTodoImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'startTargetDt': instance.startTargetDt.toIso8601String(),
      'intervalDay': instance.intervalDay,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt?.toIso8601String(),
    };
