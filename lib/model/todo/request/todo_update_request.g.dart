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
      targetDate:
          const DateOnlyConverter().fromJson(json['targetDate'] as String),
      startTargetTm: const NullableTimeConverter()
          .fromJson(json['startTargetTm'] as String?),
      endTargetTm: const NullableTimeConverter()
          .fromJson(json['endTargetTm'] as String?),
    );

Map<String, dynamic> _$$TodoUpdateRequestImplToJson(
        _$TodoUpdateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'targetDate': const DateOnlyConverter().toJson(instance.targetDate),
      'startTargetTm':
          const NullableTimeConverter().toJson(instance.startTargetTm),
      'endTargetTm': const NullableTimeConverter().toJson(instance.endTargetTm),
    };
