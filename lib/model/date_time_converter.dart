import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter {
  /// ISO 8601 형식의 DateTime 변환 (기본)
  static DateTime fromJson(String date) => DateTime.parse(date);
  static String toJson(DateTime date) => date.toIso8601String();

  /// 날짜만 변환 (yyyy-MM-dd)
  static DateTime dateFromJson(String date) => DateTime.parse(date);
  static String dateToJson(DateTime date) => date.toIso8601String().split('T')[0];

  /// 시간만 변환 (HH:mm:ss)
  static DateTime timeFromJson(String time) {
    final parsedTime = time.split(':'); // "HH:mm:ss" 형태로 분리
    return DateTime(1970, 1, 1,
        int.parse(parsedTime[0]),
        int.parse(parsedTime[1]),
        parsedTime.length > 2 ? int.parse(parsedTime[2]) : 0);
  }

  static String timeToJson(DateTime date) =>
      "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}:${date.second.toString().padLeft(2, '0')}";
}

/// DateTime을 ISO 8601 형식으로 변환하는 JsonConverter
class DateTimeIsoConverter implements JsonConverter<DateTime, String> {
  const DateTimeIsoConverter();

  @override
  DateTime fromJson(String json) => DateTimeConverter.fromJson(json);

  @override
  String toJson(DateTime object) => DateTimeConverter.toJson(object);
}

/// 날짜만 변환하는 JsonConverter (yyyy-MM-dd)
class DateOnlyConverter implements JsonConverter<DateTime, String> {
  const DateOnlyConverter();

  @override
  DateTime fromJson(String json) => DateTimeConverter.dateFromJson(json);

  @override
  String toJson(DateTime object) => DateTimeConverter.dateToJson(object);
}

/// null 가능한 DateTime을 ISO 8601 형식으로 변환하는 JsonConverter
class NullableDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const NullableDateTimeConverter();

  @override
  DateTime? fromJson(String? json) => json != null ? DateTimeConverter.fromJson(json) : null;

  @override
  String? toJson(DateTime? object) => object != null ? DateTimeConverter.toJson(object) : null;
}

/// null 가능한 시간만 변환하는 JsonConverter (HH:mm:ss)
class NullableTimeConverter implements JsonConverter<DateTime?, String?> {
  const NullableTimeConverter();

  @override
  DateTime? fromJson(String? json) => json != null ? DateTimeConverter.timeFromJson(json) : null;

  @override
  String? toJson(DateTime? object) => object != null ? DateTimeConverter.timeToJson(object) : null;
}