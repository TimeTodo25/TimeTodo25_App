// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      category_idx: (json['category_idx'] as num).toInt(),
      categoryTitle: json['categoryTitle'] as String,
      mainColor: json['mainColor'] as String,
      publicStatus: json['publicStatus'] as String,
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: DateTime.parse(json['updateDt'] as String),
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'category_idx': instance.category_idx,
      'categoryTitle': instance.categoryTitle,
      'mainColor': instance.mainColor,
      'publicStatus': instance.publicStatus,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt.toIso8601String(),
    };
