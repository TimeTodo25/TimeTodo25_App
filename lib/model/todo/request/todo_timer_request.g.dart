// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_timer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTimerRequestImpl _$$TodoTimerRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoTimerRequestImpl(
      todoIdx: (json['todoIdx'] as num).toInt(),
      timeDatas: (json['timeDatas'] as List<dynamic>)
          .map((e) => TodoTimerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoTimerRequestImplToJson(
        _$TodoTimerRequestImpl instance) =>
    <String, dynamic>{
      'todoIdx': instance.todoIdx,
      'timeDatas': instance.timeDatas,
    };
