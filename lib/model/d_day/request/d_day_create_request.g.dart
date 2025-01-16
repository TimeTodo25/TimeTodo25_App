// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'd_day_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DdayCreateRequestImpl _$$DdayCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DdayCreateRequestImpl(
      userIdx: (json['userIdx'] as num).toInt(),
      content: json['content'] as String,
      targetDt: DateTime.parse(json['targetDt'] as String),
      targetDelYn: json['targetDelYn'] as bool,
    );

Map<String, dynamic> _$$DdayCreateRequestImplToJson(
        _$DdayCreateRequestImpl instance) =>
    <String, dynamic>{
      'userIdx': instance.userIdx,
      'content': instance.content,
      'targetDt': instance.targetDt.toIso8601String(),
      'targetDelYn': instance.targetDelYn,
    };
