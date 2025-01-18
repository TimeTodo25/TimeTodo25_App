import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/todo/widget/custom_time_format.dart';
import 'package:time_todo/ui/todo/widget/timer_text.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class CircularTimerIndicator extends StatefulWidget {
  final int timerDuration; // 현재 타이머 진행 시간
  final DateTime? startTime; // 시작시간을 설정했다면 띄움
  final Color? color; // indicator 채우는 색상

  CircularTimerIndicator({
    super.key,
    required this.timerDuration,
    this.startTime,
    this.color
  });

  @override
  State<CircularTimerIndicator> createState() => _CircularTimerIndicatorState();
}

class _CircularTimerIndicatorState extends State<CircularTimerIndicator> {
  double percent = 0.0;

  @override
  void initState() {
    super.initState();
    initPercent();
  }

  @override
  void didUpdateWidget(covariant CircularTimerIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.timerDuration != oldWidget.timerDuration) {
      updatePercent();
    }
  }

  void initPercent() {
    percent = 0.0;
  }

  // 1시간 기준으로 나누어서 1시간 단위로 순환시킴
  void updatePercent() {
      percent = (widget.timerDuration % 3600) / 3600;
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 130,
      lineWidth: 12,
      animation: false,
      // 달성률
      percent: percent,
      backgroundColor: grey1,
      // 위젯 가운데에 나타낼 텍스트
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Flexible(
            flex: 1,
            child: TimerText(),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: widget.startTime != null
                ? customTimeFormat(context, dateTime: widget.startTime)
                : Text(''),
          ),
        ],
      ),
      progressColor: widget.color,
      // progress 테두리 설정
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
