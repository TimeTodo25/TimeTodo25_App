import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

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
  List<String> startTimeInfo = [];

  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

  // 타이머 하단에 나타낼 시작 시간 정보
  void convertStartTimeToString() {
    if (widget.startTime != null) {
      startTimeInfo = [
        DateFormat('hh').format(widget.startTime!), // 12시간 형식의 시
        DateFormat('mm').format(widget.startTime!), // 분
        DateFormat('a').format(widget.startTime!).toLowerCase(), // AM 또는 PM
      ];
    }
  }

  @override
  void initState() {
    // 시작 시간 정보를 string 형태로 변환
    convertStartTimeToString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: CircularPercentIndicator(
        radius: 110,
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
              fit: FlexFit.loose,
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
                  ? Text(
                      '${startTimeInfo[0]}:${startTimeInfo[1]} ${startTimeInfo[2]}',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: grey3),
                    )
                  : Text(''),
            ),
          ],
        ),
        progressColor: todoColor,
        // progress 테두리 설정
        circularStrokeCap: CircularStrokeCap.round,
      ),
    );
  }
}
