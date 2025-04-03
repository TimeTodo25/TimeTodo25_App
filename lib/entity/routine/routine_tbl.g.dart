// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineImpl _$$RoutineImplFromJson(Map<String, dynamic> json) =>
    _$RoutineImpl(
      idx: (json['idx'] as num?)?.toInt(),
      syncIdx: (json['syncIdx'] as num?)?.toInt(),
      categoryIdx: (json['categoryIdx'] as num?)?.toInt(),
      categorySyncIdx: (json['categorySyncIdx'] as num?)?.toInt(),
      content: json['content'] as String,
      startDt: DateTime.parse(json['startDt'] as String),
      endDt: DateTime.parse(json['endDt'] as String),
      cycleType: json['cycleType'] as String,
      cycleValue: json['cycleValue'] as String,
      rm: json['rm'] as String? ?? '',
      createDt: json['createDt'] == null
          ? null
          : DateTime.parse(json['createDt'] as String),
      updateDt: DateTime.parse(json['updateDt'] as String),
      status: json['status'] as String? ?? 'Y',
      syncStatus: json['syncStatus'] as String? ?? 'P',
      syncDt: json['syncDt'] == null
          ? null
          : DateTime.parse(json['syncDt'] as String),
    );

Map<String, dynamic> _$$RoutineImplToJson(_$RoutineImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'syncIdx': instance.syncIdx,
      'categoryIdx': instance.categoryIdx,
      'categorySyncIdx': instance.categorySyncIdx,
      'content': instance.content,
      'startDt': instance.startDt.toIso8601String(),
      'endDt': instance.endDt.toIso8601String(),
      'cycleType': instance.cycleType,
      'cycleValue': instance.cycleValue,
      'rm': instance.rm,
      'createDt': instance.createDt?.toIso8601String(),
      'updateDt': instance.updateDt.toIso8601String(),
      'status': instance.status,
      'syncStatus': instance.syncStatus,
      'syncDt': instance.syncDt?.toIso8601String(),
    };
