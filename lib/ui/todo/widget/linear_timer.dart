import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

class LinearTimer extends StatefulWidget {
  final Color color; // indicator Color
  final double percent; // indicator 달성률
  final List<String> startTime; // 시작시간 정보를 담은 리스트 ex) '08:00', 'pm'
  final List<String> endTime; // 마침시간 정보를 담은 리스트 ex) '09:00', 'pm'

  LinearTimer({
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              // timeText(context, '8:10'),
              // smallText(context, 'pm'),
              timeText(context, '${widget.startTime[0]}:${widget.startTime[1]}'),
              smallText(context, widget.startTime[2])
            ],
          ),
          Row(
            children: [
              timeText(context, '${widget.endTime[0]}:${widget.endTime[1]}'),
              smallText(context, widget.endTime[2])
            ]
          )
        ]),
        // 막대 퍼센트
        LinearPercentIndicator(
          animation: true,
          lineHeight: 20,
          percent: widget.percent,
          barRadius: const Radius.circular(10),
          backgroundColor: grey2,
          progressColor: widget.color,
        )
      ],
    );
  }
}

// 시작시간, 마침시간에 폰트 사이즈, 컬러 적용
Widget timeText(BuildContext context, String string) {
  return Text(string,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: grey3));
}

// am, pm 나타낼 폰트 사이즈, 컬러 적용
Widget smallText(BuildContext context, String string) {
  return Text(string,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: grey3, fontSize: 14));
}
