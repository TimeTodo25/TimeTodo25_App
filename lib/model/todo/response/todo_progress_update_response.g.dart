// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_progress_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoProgressUpdateResponseImpl _$$TodoProgressUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoProgressUpdateResponseImpl(
      updateDt:
          const DateTimeIsoConverter().fromJson(json['updateDt'] as String),
    );

Map<String, dynamic> _$$TodoProgressUpdateResponseImplToJson(
        _$TodoProgressUpdateResponseImpl instance) =>
    <String, dynamic>{
      'updateDt': const DateTimeIsoConverter().toJson(instance.updateDt),
    };
