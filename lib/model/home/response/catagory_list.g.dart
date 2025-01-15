// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catagory_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListImpl _$$CategoryListImplFromJson(Map<String, dynamic> json) =>
    _$CategoryListImpl(
      idx: (json['idx'] as num).toInt(),
      title: json['title'] as String,
      mainColor: json['mainColor'] as String,
      publicStatus: json['publicStatus'] as String,
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: json['updateDt'] == null
          ? null
          : DateTime.parse(json['updateDt'] as String),
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListImplToJson(_$CategoryListImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'mainColor': instance.mainColor,
      'publicStatus': instance.publicStatus,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt?.toIso8601String(),
      'todos': instance.todos,
    };
