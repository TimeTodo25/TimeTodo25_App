import 'package:intl/intl.dart';

class DateTimeUtils {

  static String formatDateTime(DateTime? dateTime, {String defaultText = ''}) {
    return dateTime != null
        ? DateFormat('yyyy-MM-dd hh:mm a').format(dateTime)
        : defaultText;
  }

  static String formatDate(DateTime? dateTime, {String defaultText = '날짜 선택'}) {
    return dateTime != null
        ? DateFormat('yyyy-MM-dd').format(dateTime)
        : defaultText;
  }

  static String formatTime(DateTime? dateTime, {String defaultText = '시간 선택'}) {
    return dateTime != null
        ? DateFormat('hh:mm a').format(dateTime)
        : defaultText;
  }

  static String formatOnlyTime(DateTime? dateTime, {String defaultText = ''}) {
    return dateTime != null
        ? DateFormat('hh:mm').format(dateTime)
        : defaultText;
  }

  static String formatTimeOnlyAMPM(DateTime? dateTime, {String defaultText = ''}) {
    return dateTime != null
        ? DateFormat('a').format(dateTime)
        : defaultText;
  }
}