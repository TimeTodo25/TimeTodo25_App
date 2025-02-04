// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerModelImpl _$$TimerModelImplFromJson(Map<String, dynamic> json) =>
    _$TimerModelImpl(
      idx: (json['idx'] as num?)?.toInt(),
      historyEndDt: json['historyEndDt'] as String,
      historyStartDt: json['historyStartDt'] as String,
      historyType: $enumDecode(_$TimerLogTypeEnumMap, json['historyType']),
      totalTm: json['totalTm'] as String,
      todoIdx: (json['todoIdx'] as num).toInt(),
      syncIdx: (json['syncIdx'] as num?)?.toInt(),
      syncCategoryIdx: (json['syncCategoryIdx'] as num?)?.toInt(),
      syncDt: json['syncDt'] == null
          ? null
          : DateTime.parse(json['syncDt'] as String),
      syncStatus: json['syncStatus'] as String? ?? "P",
    );

Map<String, dynamic> _$$TimerModelImplToJson(_$TimerModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'historyEndDt': instance.historyEndDt,
      'historyStartDt': instance.historyStartDt,
      'historyType': _$TimerLogTypeEnumMap[instance.historyType]!,
      'totalTm': instance.totalTm,
      'todoIdx': instance.todoIdx,
      'syncIdx': instance.syncIdx,
      'syncCategoryIdx': instance.syncCategoryIdx,
      'syncDt': instance.syncDt?.toIso8601String(),
      'syncStatus': instance.syncStatus,
    };

const _$TimerLogTypeEnumMap = {
  TimerLogType.started: 'started',
  TimerLogType.paused: 'paused',
};
