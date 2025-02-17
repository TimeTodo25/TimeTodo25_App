// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tbl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      idx: (json['idx'] as num?)?.toInt(),
      title: json['title'] as String,
      userName: json['userName'] as String,
      categoryColor: json['categoryColor'] as String,
      status: json['status'] as String? ?? "Y",
      createDt: json['createDt'] == null
          ? null
          : DateTime.parse(json['createDt'] as String),
      updateDt: json['updateDt'] == null
          ? null
          : DateTime.parse(json['updateDt'] as String),
      deleteDt: json['deleteDt'] == null
          ? null
          : DateTime.parse(json['deleteDt'] as String),
      publicStatus:
          $enumDecode(_$VisibilityOptionEnumMap, json['publicStatus']),
      syncIdx: (json['syncIdx'] as num?)?.toInt(),
      syncCategoryIdx: (json['syncCategoryIdx'] as num?)?.toInt(),
      syncDt: json['syncDt'] == null
          ? null
          : DateTime.parse(json['syncDt'] as String),
      syncStatus: json['syncStatus'] as String? ?? "P",
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'userName': instance.userName,
      'categoryColor': instance.categoryColor,
      'status': instance.status,
      'createDt': instance.createDt?.toIso8601String(),
      'updateDt': instance.updateDt?.toIso8601String(),
      'deleteDt': instance.deleteDt?.toIso8601String(),
      'publicStatus': _$VisibilityOptionEnumMap[instance.publicStatus]!,
      'syncIdx': instance.syncIdx,
      'syncCategoryIdx': instance.syncCategoryIdx,
      'syncDt': instance.syncDt?.toIso8601String(),
      'syncStatus': instance.syncStatus,
    };

const _$VisibilityOptionEnumMap = {
  VisibilityOption.private: 'private',
  VisibilityOption.partial: 'partial',
  VisibilityOption.public: 'public',
};
