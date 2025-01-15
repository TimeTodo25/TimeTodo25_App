// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoCreateResponseImpl _$$TodoCreateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoCreateResponseImpl(
      idx: (json['idx'] as num).toInt(),
      categoryTitle: json['categoryTitle'] as String,
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: DateTime.parse(json['updateDt'] as String),
    );

Map<String, dynamic> _$$TodoCreateResponseImplToJson(
        _$TodoCreateResponseImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'categoryTitle': instance.categoryTitle,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt.toIso8601String(),
    };
