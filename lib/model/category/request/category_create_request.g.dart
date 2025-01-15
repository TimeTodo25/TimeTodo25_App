// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryCreateRequestImpl _$$CategoryCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryCreateRequestImpl(
      user_idx: (json['user_idx'] as num).toInt(),
      categoryTitle: json['categoryTitle'] as String,
      mainColor: json['mainColor'] as String,
      publicStatus: json['publicStatus'] as String,
    );

Map<String, dynamic> _$$CategoryCreateRequestImplToJson(
        _$CategoryCreateRequestImpl instance) =>
    <String, dynamic>{
      'user_idx': instance.user_idx,
      'categoryTitle': instance.categoryTitle,
      'mainColor': instance.mainColor,
      'publicStatus': instance.publicStatus,
    };
