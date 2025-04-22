// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoUpdateResponseImpl _$$TodoUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoUpdateResponseImpl(
      updateDt:
          const DateTimeIsoConverter().fromJson(json['updateDt'] as String),
    );

Map<String, dynamic> _$$TodoUpdateResponseImplToJson(
        _$TodoUpdateResponseImpl instance) =>
    <String, dynamic>{
      'updateDt': const DateTimeIsoConverter().toJson(instance.updateDt),
    };
