// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoCreateResponseImpl _$$TodoCreateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoCreateResponseImpl(
      todoIdx: (json['todoIdx'] as num?)?.toInt(),
      updateDt:
          const DateTimeIsoConverter().fromJson(json['updateDt'] as String),
    );

Map<String, dynamic> _$$TodoCreateResponseImplToJson(
        _$TodoCreateResponseImpl instance) =>
    <String, dynamic>{
      'todoIdx': instance.todoIdx,
      'updateDt': const DateTimeIsoConverter().toJson(instance.updateDt),
    };
