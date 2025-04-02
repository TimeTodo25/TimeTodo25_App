// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerHistoriesImpl _$$TimerHistoriesImplFromJson(Map<String, dynamic> json) =>
    _$TimerHistoriesImpl(
      startDt: const DateTimeIsoConverter().fromJson(json['startDt'] as String),
      endDt: const DateTimeIsoConverter().fromJson(json['endDt'] as String),
      totalTm: json['totalTm'] as String,
    );

Map<String, dynamic> _$$TimerHistoriesImplToJson(
        _$TimerHistoriesImpl instance) =>
    <String, dynamic>{
      'startDt': const DateTimeIsoConverter().toJson(instance.startDt),
      'endDt': const DateTimeIsoConverter().toJson(instance.endDt),
      'totalTm': instance.totalTm,
    };
