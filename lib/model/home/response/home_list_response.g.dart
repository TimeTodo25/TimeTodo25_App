// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeListResponseImpl _$$HomeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeListResponseImpl(
      dDayList: (json['dDayList'] as List<dynamic>)
          .map((e) => IntervalDayTodoList.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryList: (json['categoryList'] as List<dynamic>)
          .map((e) => CategoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeListResponseImplToJson(
        _$HomeListResponseImpl instance) =>
    <String, dynamic>{
      'dDayList': instance.dDayList,
      'categoryList': instance.categoryList,
    };
