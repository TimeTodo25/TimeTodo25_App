// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoDetailResponseImpl _$$TodoDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoDetailResponseImpl(
      idx: (json['idx'] as num).toInt(),
      content: json['content'] as String,
      totalTm: json['totalTm'] as String?,
      timerHistories: (json['timerHistories'] as List<dynamic>?)
          ?.map((e) => TimerHistories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoDetailResponseImplToJson(
        _$TodoDetailResponseImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'totalTm': instance.totalTm,
      'timerHistories': instance.timerHistories,
    };
