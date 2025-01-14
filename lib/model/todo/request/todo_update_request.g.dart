// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoUpdateRequestImpl _$$TodoUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoUpdateRequestImpl(
      idx: (json['idx'] as num).toInt(),
      content: json['content'] as String,
      targetDate: DateTime.parse(json['targetDate'] as String),
      startTargetTm: json['startTargetTm'] == null
          ? null
          : DateTime.parse(json['startTargetTm'] as String),
      endTargetTm: json['endTargetTm'] == null
          ? null
          : DateTime.parse(json['endTargetTm'] as String),
    );

Map<String, dynamic> _$$TodoUpdateRequestImplToJson(
        _$TodoUpdateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'targetDate': instance.targetDate.toIso8601String(),
      'startTargetTm': instance.startTargetTm?.toIso8601String(),
      'endTargetTm': instance.endTargetTm?.toIso8601String(),
    };
