// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoCreateRequestImpl _$$TodoCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoCreateRequestImpl(
      content: json['content'] as String,
      categoryIdx: (json['categoryIdx'] as num).toInt(),
      date: const DateOnlyConverter().fromJson(json['date'] as String),
      startTargetTm: const NullableTimeConverter()
          .fromJson(json['startTargetTm'] as String?),
      endTargetTm: const NullableTimeConverter()
          .fromJson(json['endTargetTm'] as String?),
    );

Map<String, dynamic> _$$TodoCreateRequestImplToJson(
        _$TodoCreateRequestImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'categoryIdx': instance.categoryIdx,
      'date': const DateOnlyConverter().toJson(instance.date),
      'startTargetTm':
          const NullableTimeConverter().toJson(instance.startTargetTm),
      'endTargetTm': const NullableTimeConverter().toJson(instance.endTargetTm),
    };
