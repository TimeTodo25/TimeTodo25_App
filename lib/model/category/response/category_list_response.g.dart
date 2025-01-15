// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListResponseImpl _$$CategoryListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseImpl(
      categoryList: (json['categoryList'] as List<dynamic>)
          .map((e) => CategoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListResponseImplToJson(
        _$CategoryListResponseImpl instance) =>
    <String, dynamic>{
      'categoryList': instance.categoryList,
    };
