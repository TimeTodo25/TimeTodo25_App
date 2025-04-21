// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_timer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTimerDataImpl _$$TodoTimerDataImplFromJson(Map<String, dynamic> json) =>
    _$TodoTimerDataImpl(
      startDt: const DateTimeServerFormatConverter()
          .fromJson(json['startDt'] as String),
      endDt: const DateTimeServerFormatConverter()
          .fromJson(json['endDt'] as String),
    );

Map<String, dynamic> _$$TodoTimerDataImplToJson(_$TodoTimerDataImpl instance) =>
    <String, dynamic>{
      'startDt': const DateTimeServerFormatConverter().toJson(instance.startDt),
      'endDt': const DateTimeServerFormatConverter().toJson(instance.endDt),
    };
