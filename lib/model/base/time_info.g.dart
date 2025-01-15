// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeInfoImpl _$$TimeInfoImplFromJson(Map<String, dynamic> json) =>
    _$TimeInfoImpl(
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
      second: (json['second'] as num).toInt(),
    );

Map<String, dynamic> _$$TimeInfoImplToJson(_$TimeInfoImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
    };
