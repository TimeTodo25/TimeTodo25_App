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
      date: DateTime.parse(json['date'] as String),
      startTargetTm: json['startTargetTm'] == null
          ? null
          : DateTime.parse(json['startTargetTm'] as String),
      endTargetTm: json['endTargetTm'] == null
          ? null
          : DateTime.parse(json['endTargetTm'] as String),
    );

Map<String, dynamic> _$$TodoCreateRequestImplToJson(
        _$TodoCreateRequestImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'categoryIdx': instance.categoryIdx,
      'date': instance.date.toIso8601String(),
      'startTargetTm': instance.startTargetTm?.toIso8601String(),
      'endTargetTm': instance.endTargetTm?.toIso8601String(),
    };
