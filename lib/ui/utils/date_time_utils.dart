import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formatDateTime(dynamic dateTime, {String defaultText = ''}) {
    DateTime? parsedDate = _parseDateTime(dateTime);
    return parsedDate != null
        ? DateFormat('yyyy-MM-dd hh:mm a').format(parsedDate)
        : defaultText;
  }

  static String formatDate(dynamic dateTime, {String defaultText = '날짜 선택'}) {
    DateTime? parsedDate = _parseDateTime(dateTime);
    return parsedDate != null
        ? DateFormat('yyyy-MM-dd').format(parsedDate)
        : defaultText;
  }

  static String formatTime(dynamic dateTime, {String defaultText = '시간 선택'}) {
    DateTime? parsedDate = _parseDateTime(dateTime);
    return parsedDate != null
        ? DateFormat('hh:mm a').format(parsedDate)
        : defaultText;
  }

  static String formatOnlyTime(dynamic dateTime, {String defaultText = ''}) {
    DateTime? parsedDate = _parseDateTime(dateTime);
    return parsedDate != null
        ? DateFormat('hh:mm').format(parsedDate)
        : defaultText;
  }

  static String formatTimeOnlyAMPM(dynamic dateTime, {String defaultText = ''}) {
    DateTime? parsedDate = _parseDateTime(dateTime);
    return parsedDate != null
        ? DateFormat('a').format(parsedDate)
        : defaultText;
  }

  // `String` 또는 `DateTime`을 `DateTime`으로 변환
  static DateTime? _parseDateTime(dynamic input) {
    if (input == null || input.toString().trim().isEmpty) return null;

    if (input is DateTime) return input; // DateTime이면 그대로 반환

    try {
      return DateTime.parse(input.toString()); // String → DateTime 변환
    } catch (e) {
      return null; // 변환 실패 시 null 반환
    }
  }

  // 주어진 DateTime에서 연월일(yyyy-MM-dd)만 추출
  static DateTime extractDateOnly(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  // 주어진 DateTime에서 시간(hh:mm:ss)만 추출
  static DateTime extractTimeOnly(DateTime dateTime) {
    return DateTime(0, 1, 1, dateTime.hour, dateTime.minute, dateTime.second);
  }

  // 주어진 DateTime에서 연-월-일 시간:분까지만 추출
  static DateTime extractDateTimeWithoutSeconds(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, dateTime.hour, dateTime.minute);
  }

  // 첫 번째 DateTime에서 연월일만, 두 번째 DateTime에서 시간만 추출하여 합친다.
  static DateTime combineDateAndTime(DateTime date, DateTime? time) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time?.hour ?? 0,
      time?.minute ?? 0,
      time?.second ?? 0,
    );
  }
}