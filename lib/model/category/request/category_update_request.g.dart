// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryUpdateRequestImpl _$$CategoryUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryUpdateRequestImpl(
      idx: (json['idx'] as num).toInt(),
      categoryTitle: json['categoryTitle'] as String,
      publicStatus: json['publicStatus'] as String,
      mainColor: json['mainColor'] as String,
    );

Map<String, dynamic> _$$CategoryUpdateRequestImplToJson(
        _$CategoryUpdateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'categoryTitle': instance.categoryTitle,
      'publicStatus': instance.publicStatus,
      'mainColor': instance.mainColor,
    };
