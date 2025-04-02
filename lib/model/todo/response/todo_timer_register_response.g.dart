// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_timer_register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTimerRegisterResponseImpl _$$TodoTimerRegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoTimerRegisterResponseImpl(
      updateDt:
          const DateTimeIsoConverter().fromJson(json['updateDt'] as String),
      timerIdxList: (json['timerIdxList'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$TodoTimerRegisterResponseImplToJson(
        _$TodoTimerRegisterResponseImpl instance) =>
    <String, dynamic>{
      'updateDt': const DateTimeIsoConverter().toJson(instance.updateDt),
      'timerIdxList': instance.timerIdxList,
    };
