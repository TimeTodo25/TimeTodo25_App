import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

Widget customTimeFormat(
    BuildContext context, {
      required DateTime? dateTime
    }) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: DateTimeUtils.formatOnlyTime(dateTime),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3),
        ),
        TextSpan(
          text: DateTimeUtils.formatTimeOnlyAMPM(dateTime).toLowerCase(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: grey3, fontSize: 14)
        ),
      ],
    ),
  );
}