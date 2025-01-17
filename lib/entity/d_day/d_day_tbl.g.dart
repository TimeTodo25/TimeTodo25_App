// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'd_day_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DdayImpl _$$DdayImplFromJson(Map<String, dynamic> json) => _$DdayImpl(
      idx: (json['idx'] as num?)?.toInt(),
      syncIdx: (json['syncIdx'] as num?)?.toInt(),
      content: json['content'] as String,
      targetDt: DateTime.parse(json['targetDt'] as String),
      targetDelStatus: json['targetDelStatus'] as String,
      createDt: DateTime.parse(json['createDt'] as String),
      updateDt: DateTime.parse(json['updateDt'] as String),
      status: json['status'] as String? ?? 'Y',
      syncStatus: json['syncStatus'] as String? ?? 'P',
      syncDt: json['syncDt'] == null
          ? null
          : DateTime.parse(json['syncDt'] as String),
    );

Map<String, dynamic> _$$DdayImplToJson(_$DdayImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'syncIdx': instance.syncIdx,
      'content': instance.content,
      'targetDt': instance.targetDt.toIso8601String(),
      'targetDelStatus': instance.targetDelStatus,
      'createDt': instance.createDt.toIso8601String(),
      'updateDt': instance.updateDt.toIso8601String(),
      'status': instance.status,
      'syncStatus': instance.syncStatus,
      'syncDt': instance.syncDt?.toIso8601String(),
    };
