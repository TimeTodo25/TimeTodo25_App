// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_progress_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoProgressUpdateRequestImpl _$$TodoProgressUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoProgressUpdateRequestImpl(
      idx: (json['idx'] as num).toInt(),
      progressStatus: (json['progressStatus'] as num).toInt(),
    );

Map<String, dynamic> _$$TodoProgressUpdateRequestImplToJson(
        _$TodoProgressUpdateRequestImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'progressStatus': instance.progressStatus,
    };
