import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/todo/widget/custom_time_format.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class CircularTimer extends StatefulWidget {
  final double percent;
  final List<String>? displayTime; // 타이머 중앙에 띄울 시간
  final DateTime? startTime; // 시작시간을 설정했다면 띄움
  final Color? color; // indicator 채우는 색상

  CircularTimer({
    super.key,
    required this.percent,
    this.displayTime,
    this.startTime,
    this.color
  });

  @override
  State<CircularTimer> createState() => _CircularTimerState();
}

class _CircularTimerState extends State<CircularTimer> {
  Color todoColor = mainBlue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      CircularPercentIndicator(
          radius: 130,
          lineWidth: 12,
          animation: true,
          // 달성률
          percent: widget.percent,
          backgroundColor: grey1,
          // 위젯 가운데에 나타낼 텍스트
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Flexible(
                flex: 1,
                child: Text(
                  widget.displayTime != null
                      ? '${widget.displayTime![0]} : ${widget.displayTime![1]} : ${widget.displayTime![2]}'
                      : '00 : 00 : 00',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 30),
                ),
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
          progressColor: todoColor,
          // progress 테두리 설정
          circularStrokeCap: CircularStrokeCap.round,
        );
  }
}
