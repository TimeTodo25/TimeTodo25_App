import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

class CircularTimer extends StatefulWidget {
  List<String>? displayTime;
  Color? color; // indicator 채우는 색상

  CircularTimer({super.key});

  @override
  State<CircularTimer> createState() => _CircularTimerState();
}

class _CircularTimerState extends State<CircularTimer> {
  // 타이머에 나타낼 시, 분, 초 (흐르는 시간)
  List<String> displayTime = ['00', '00', '00'];
  List<String> displayStartTime = [];

  // 달성률
  double percent = 0.0;

  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

  // todo 시작시간을 설정했다면 띄움
  final DateTime _startTime = DateTime.now();

  // 타이머 하단에 나타낼 시작 시간 정보
  void getStartTime() {
    if (displayStartTime.isEmpty) {
      displayStartTime = [
        DateFormat('hh').format(_startTime), // 12시간 형식의 시
        DateFormat('mm').format(_startTime), // 분
        DateFormat('a').format(_startTime).toLowerCase(), // AM 또는 PM
      ];
    }
  }

  @override
  void initState() {
    // 시작 시간 정보 가져오기
    getStartTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120,
      lineWidth: 12,
      animation: true,
      // 달성률
      percent: percent,
      backgroundColor: grey1,
      // 위젯 가운데에 나타낼 텍스트
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Container()),
          Flexible(
            flex: 4,
            child: Text(
              // 00 : 00 : 00
              '${displayTime[0]} : ${displayTime[1]} : ${displayTime[2]}',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontSize: 30),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            flex: 2,
            child: displayStartTime.isNotEmpty
                ? Text(
                    '${displayStartTime[0]}:${displayStartTime[1]} ${displayStartTime[2]}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: grey3),
                  )
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
