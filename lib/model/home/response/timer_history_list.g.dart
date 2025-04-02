// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_history_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerHistoryListImpl _$$TimerHistoryListImplFromJson(
        Map<String, dynamic> json) =>
    _$TimerHistoryListImpl(
      mainColor: json['mainColor'] as String,
      startTm: DateTime.parse(json['startTm'] as String),
      endTm: DateTime.parse(json['endTm'] as String),
    );

Map<String, dynamic> _$$TimerHistoryListImplToJson(
        _$TimerHistoryListImpl instance) =>
    <String, dynamic>{
      'mainColor': instance.mainColor,
      'startTm': instance.startTm.toIso8601String(),
      'endTm': instance.endTm.toIso8601String(),
    };
