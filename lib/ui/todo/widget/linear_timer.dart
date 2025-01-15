import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/todo/widget/custom_time_format.dart';

class LinearTimer extends StatefulWidget {
  final Color color; // indicator Color
  final double percent; // indicator 달성률
  final DateTime? startTime;
  final DateTime? endTime;

  const LinearTimer({
    super.key,
    required this.color,
    required this.percent,
    required this.startTime,
    required this.endTime
  });

  @override
  State<LinearTimer> createState() => _LinearTimerState();
}

class _LinearTimerState extends State<LinearTimer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 퍼센트 위쪽에 띄울 시작시간, 마침시간 정보
        Flexible(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Row(
              children: [
                const SizedBox(width: 5),
                customTimeFormat(context, dateTime: widget.startTime)
              ],
            ),
            Row(
              children: [
                customTimeFormat(context, dateTime: widget.endTime),
                const SizedBox(width: 5),
              ]
            )
          ]),
        ),
        const SizedBox(height: 5),
        // 막대 퍼센트
        Flexible(
          child: LinearPercentIndicator(
            padding: EdgeInsets.zero,
            animation: true,
            lineHeight: 15,
            percent: widget.percent,
            barRadius: const Radius.circular(10),
            backgroundColor: grey1,
            progressColor: widget.color,
          ),
        )
      ],
    );
  }
}
