// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_timer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTimerDataImpl _$$TodoTimerDataImplFromJson(Map<String, dynamic> json) =>
    _$TodoTimerDataImpl(
      startDt: const DateTimeIsoConverter().fromJson(json['startDt'] as String),
      endDt: const DateTimeIsoConverter().fromJson(json['endDt'] as String),
    );

Map<String, dynamic> _$$TodoTimerDataImplToJson(_$TodoTimerDataImpl instance) =>
    <String, dynamic>{
      'startDt': const DateTimeIsoConverter().toJson(instance.startDt),
      'endDt': const DateTimeIsoConverter().toJson(instance.endDt),
    };
