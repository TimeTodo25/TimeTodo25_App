import 'package:flutter/material.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class TimerLogTimeText extends StatelessWidget {
  final String dateTime;

  const TimerLogTimeText({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    if (dateTime.isEmpty) return const SizedBox(); // 빈 값 처리

    String formattedTime = "${DateTimeUtils.formatOnlyTime(dateTime)} ${DateTimeUtils.formatTimeOnlyAMPM(dateTime).toLowerCase()}";

    return Text(formattedTime);
  }
}