// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_timer_history_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeTimerHistoryListImpl _$$HomeTimerHistoryListImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeTimerHistoryListImpl(
      mainColor: json['mainColor'] as String,
      startTm: DateTime.parse(json['startTm'] as String),
      endTm: DateTime.parse(json['endTm'] as String),
    );

Map<String, dynamic> _$$HomeTimerHistoryListImplToJson(
        _$HomeTimerHistoryListImpl instance) =>
    <String, dynamic>{
      'mainColor': instance.mainColor,
      'startTm': instance.startTm.toIso8601String(),
      'endTm': instance.endTm.toIso8601String(),
    };
