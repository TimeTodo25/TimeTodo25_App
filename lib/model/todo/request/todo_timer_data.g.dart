// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_timer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTimerDataImpl _$$TodoTimerDataImplFromJson(Map<String, dynamic> json) =>
    _$TodoTimerDataImpl(
      startDt: DateTime.parse(json['startDt'] as String),
      endDt: DateTime.parse(json['endDt'] as String),
    );

Map<String, dynamic> _$$TodoTimerDataImplToJson(_$TodoTimerDataImpl instance) =>
    <String, dynamic>{
      'startDt': instance.startDt.toIso8601String(),
      'endDt': instance.endDt.toIso8601String(),
    };
