// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerHistoriesImpl _$$TimerHistoriesImplFromJson(Map<String, dynamic> json) =>
    _$TimerHistoriesImpl(
      startDt: DateTime.parse(json['startDt'] as String),
      endDt: DateTime.parse(json['endDt'] as String),
      totalTm: json['totalTm'] as String,
    );

Map<String, dynamic> _$$TimerHistoriesImplToJson(
        _$TimerHistoriesImpl instance) =>
    <String, dynamic>{
      'startDt': instance.startDt.toIso8601String(),
      'endDt': instance.endDt.toIso8601String(),
      'totalTm': instance.totalTm,
    };
