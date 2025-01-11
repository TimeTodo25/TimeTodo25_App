// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      idx: (json['idx'] as num?)?.toInt(),
      title: json['title'] as String,
      userName: json['user_name'] as String,
      categoryColor: json['main_color'] as String,
      status: (json['status'] as num?)?.toInt() ?? 1,
      createDt: json['create_dt'] == null
          ? null
          : DateTime.parse(json['create_dt'] as String),
      updateDt: json['update_dt'] == null
          ? null
          : DateTime.parse(json['update_dt'] as String),
      deleteDt: json['delete_dt'] == null
          ? null
          : DateTime.parse(json['delete_dt'] as String),
      publicStatus:
          $enumDecode(_$VisibilityOptionEnumMap, json['public_status']),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'user_name': instance.userName,
      'main_color': instance.categoryColor,
      'status': instance.status,
      'create_dt': instance.createDt?.toIso8601String(),
      'update_dt': instance.updateDt?.toIso8601String(),
      'delete_dt': instance.deleteDt?.toIso8601String(),
      'public_status': _$VisibilityOptionEnumMap[instance.publicStatus]!,
    };

const _$VisibilityOptionEnumMap = {
  VisibilityOption.private: 'private',
  VisibilityOption.partial: 'partial',
  VisibilityOption.public: 'public',
};
