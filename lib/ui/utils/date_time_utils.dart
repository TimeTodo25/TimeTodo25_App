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
}