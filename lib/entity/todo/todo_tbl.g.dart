// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      idx: (json['idx'] as num?)?.toInt(),
      content: json['content'] as String,
      userName: json['userName'] as String,
      categoryIdx: (json['categoryIdx'] as num).toInt(),
      status: (json['status'] as num?)?.toInt() ?? 1,
      todoDate: DateTime.parse(json['todoDate'] as String),
      startStopWtDt: json['startStopWtDt'] == null
          ? null
          : DateTime.parse(json['startStopWtDt'] as String),
      endStopWtDt: json['endStopWtDt'] == null
          ? null
          : DateTime.parse(json['endStopWtDt'] as String),
      startTargetDt: json['startTargetDt'] == null
          ? null
          : DateTime.parse(json['startTargetDt'] as String),
      endTargetDt: json['endTargetDt'] == null
          ? null
          : DateTime.parse(json['endTargetDt'] as String),
      createDt: json['createDt'] == null
          ? null
          : DateTime.parse(json['createDt'] as String),
      updateDt: json['updateDt'] == null
          ? null
          : DateTime.parse(json['updateDt'] as String),
      deleteDt: json['deleteDt'] == null
          ? null
          : DateTime.parse(json['deleteDt'] as String),
      syncIdx: (json['syncIdx'] as num?)?.toInt(),
      syncCategoryIdx: (json['syncCategoryIdx'] as num?)?.toInt(),
      syncDt: json['syncDt'] == null
          ? null
          : DateTime.parse(json['syncDt'] as String),
      syncStatus: json['syncStatus'] as String? ?? "P",
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'userName': instance.userName,
      'categoryIdx': instance.categoryIdx,
      'status': instance.status,
      'todoDate': instance.todoDate.toIso8601String(),
      'startStopWtDt': instance.startStopWtDt?.toIso8601String(),
      'endStopWtDt': instance.endStopWtDt?.toIso8601String(),
      'startTargetDt': instance.startTargetDt?.toIso8601String(),
      'endTargetDt': instance.endTargetDt?.toIso8601String(),
      'createDt': instance.createDt?.toIso8601String(),
      'updateDt': instance.updateDt?.toIso8601String(),
      'deleteDt': instance.deleteDt?.toIso8601String(),
      'syncIdx': instance.syncIdx,
      'syncCategoryIdx': instance.syncCategoryIdx,
      'syncDt': instance.syncDt?.toIso8601String(),
      'syncStatus': instance.syncStatus,
    };
