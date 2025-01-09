// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      idx: (json['idx'] as num?)?.toInt(),
      content: json['content'] as String,
      userName: json['user_name'] as String,
      categoryIdx: (json['category_idx'] as num).toInt(),
      status: (json['status'] as num?)?.toInt() ?? 1,
      todoDate: DateTime.parse(json['todo_date'] as String),
      startStopWtDt: json['start_stop_wt_dt'] == null
          ? null
          : DateTime.parse(json['start_stop_wt_dt'] as String),
      endStopWtDt: json['end_stop_wt_dt'] == null
          ? null
          : DateTime.parse(json['end_stop_wt_dt'] as String),
      startTargetDt: json['start_target_dt'] == null
          ? null
          : DateTime.parse(json['start_target_dt'] as String),
      endTargetDt: json['end_target_dt'] == null
          ? null
          : DateTime.parse(json['end_target_dt'] as String),
      createDt: json['create_dt'] == null
          ? null
          : DateTime.parse(json['create_dt'] as String),
      updateDt: json['update_dt'] == null
          ? null
          : DateTime.parse(json['update_dt'] as String),
      deleteDt: json['delete_dt'] == null
          ? null
          : DateTime.parse(json['delete_dt'] as String),
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'content': instance.content,
      'user_name': instance.userName,
      'category_idx': instance.categoryIdx,
      'status': instance.status,
      'todo_date': instance.todoDate.toIso8601String(),
      'start_stop_wt_dt': instance.startStopWtDt?.toIso8601String(),
      'end_stop_wt_dt': instance.endStopWtDt?.toIso8601String(),
      'start_target_dt': instance.startTargetDt?.toIso8601String(),
      'end_target_dt': instance.endTargetDt?.toIso8601String(),
      'create_dt': instance.createDt?.toIso8601String(),
      'update_dt': instance.updateDt?.toIso8601String(),
      'delete_dt': instance.deleteDt?.toIso8601String(),
    };
