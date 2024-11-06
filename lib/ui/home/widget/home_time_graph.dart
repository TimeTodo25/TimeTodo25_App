import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

// 임시 클래스...
class TodoData {
  final DateTime startTime;
  final DateTime endTime;
  final Duration spendTime;
  final double percent;

  TodoData(
      {required this.startTime,
      required this.endTime,
      required this.spendTime,
      required this.percent});
}

class HomeTimeGraph extends StatefulWidget {
  const HomeTimeGraph({super.key});

  @override
  State<HomeTimeGraph> createState() => _HomeTimeGraphState();
}

class _HomeTimeGraphState extends State<HomeTimeGraph> {
  // Todo 타이머 측정한 시간이 아래와 같을 때...
  // 1. 시작시간 13:00, 종료시간 13:20, 소요시간 20분
  // 2. 시작시간 13:43, 종료시간 13:47, 소요시간 4분

  // 어느 칸에 속하는지, 칸당 몇퍼센트 채워 그려야 하는지 분기
  // 00~10분 -> percentData1[0] -> 100% -> 1.0
  // 11~20분 -> percentData1[1] -> 100%
  // 21~30분 -> percentData1[2] -> 0%
  // 31~40분 -> percentData1[3] -> 0%
  // 41~50분 -> percentData1[4] -> 40%
  // 51~60분 -> percentData1[5] -> 0%

  // 임시 데이터
  DateTime startTime1 = DateTime(2024, 11, 1, 13, 0, 0);
  DateTime endTime1 = DateTime(2024, 11, 1, 13, 20, 0);
  Duration spendTime1 = Duration(minutes: 20);

  DateTime startTime2 = DateTime(2024, 11, 1, 13, 43, 0);
  DateTime endTime2 = DateTime(2024, 11, 1, 13, 47, 0);
  Duration spendTime2 = Duration(minutes: 4);

  // 소요시간 계산
  Duration gettingSpendTime(DateTime startTime, DateTime endTime) {
    return endTime.difference(startTime);
  }

  /// percent Indicator 라이브러리 쓰면 0.1 ~ 1.0 까지 채우기 가능
  /// 만약 0부터 시작이 아니라, 중간 부터 끝까지 채우려면 (ex 0.5 ~ 1.0) background 색을 변경하는 걸로...
  /// 소요시간의 맨뒷자리가 0으로 시작하는지 아닌지에 따라 분기...
  bool checkProgressColor(Duration _spendTime) {
    String lastMinuteDigit = _spendTime.inMinutes.toString().characters.last;

    if (lastMinuteDigit == '0') {
      print("The last digit of the minutes is 0");
      return true;
    } else {
      print("The last digit of the minutes is not 0");
      return false;
    }
  }

  @override
  void initState() {
    super.initState();

    gettingSpendTime(startTime1, endTime1);
    checkProgressColor(spendTime1);
    checkProgressColor(spendTime2);
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    Color progressColor = mainBlue;
    Color borderColor = grey2;
    double _lineHeight = 24;

    // 임시 데이터...
    List<TodoData> testList1 = [
      TodoData(
          startTime: startTime1,
          endTime: endTime1,
          spendTime: spendTime1,
          percent: 1.0),
      TodoData(
          startTime: startTime1,
          endTime: endTime1,
          spendTime: spendTime1,
          percent: 1.0),
      TodoData(
          startTime: startTime1,
          endTime: endTime1,
          spendTime: spendTime1,
          percent: 0.0),
      TodoData(
          startTime: startTime1,
          endTime: endTime1,
          spendTime: spendTime1,
          percent: 0.0),
      TodoData(
          startTime: startTime2,
          endTime: endTime2,
          spendTime: spendTime2,
          percent: 0.4),
      TodoData(
          startTime: startTime1,
          endTime: endTime1,
          spendTime: spendTime1,
          percent: 0.2),
    ];

    return Row(
      children: [
        Flexible(
          // 테두리
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                border: Border.all(color: borderColor, width: 0.5)),
            child: ClipRRect(
              // 왼쪽 모서리 둥글게
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                lineHeight: _lineHeight,
                backgroundColor: checkProgressColor(testList1[0].spendTime)
                    ? backgroundColor
                    : progressColor,
                progressColor: checkProgressColor(testList1[0].spendTime)
                    ? progressColor
                    : backgroundColor,
                percent: testList1[0].percent,
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 0.5)),
            child: LinearPercentIndicator(
              padding: EdgeInsets.zero,
              lineHeight: _lineHeight,
              backgroundColor: checkProgressColor(testList1[1].spendTime)
                  ? backgroundColor
                  : progressColor,
              progressColor: checkProgressColor(testList1[1].spendTime)
                  ? progressColor
                  : backgroundColor,
              percent: testList1[1].percent,
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 0.5)),
            child: LinearPercentIndicator(
              padding: EdgeInsets.zero,
              lineHeight: _lineHeight,
              backgroundColor: checkProgressColor(testList1[2].spendTime)
                  ? backgroundColor
                  : progressColor,
              progressColor: checkProgressColor(testList1[2].spendTime)
                  ? progressColor
                  : backgroundColor,
              percent: testList1[2].percent,
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 0.5)),
            child: LinearPercentIndicator(
              padding: EdgeInsets.zero,
              lineHeight: _lineHeight,
              backgroundColor: checkProgressColor(testList1[3].spendTime)
                  ? backgroundColor
                  : progressColor,
              progressColor: checkProgressColor(testList1[3].spendTime)
                  ? progressColor
                  : backgroundColor,
              percent: testList1[3].percent,
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 0.5)),
            child: LinearPercentIndicator(
              padding: EdgeInsets.zero,
              lineHeight: _lineHeight,
              backgroundColor: checkProgressColor(testList1[4].spendTime)
                  ? backgroundColor
                  : progressColor,
              progressColor: checkProgressColor(testList1[4].spendTime)
                  ? progressColor
                  : backgroundColor,
              percent: testList1[4].percent,
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                border: Border.all(color: borderColor, width: 0.5)),
            child: ClipRRect(
              // 오른쪽 모서리 둥글게
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                lineHeight: _lineHeight,
                backgroundColor: checkProgressColor(testList1[5].spendTime)
                    ? backgroundColor
                    : progressColor,
                progressColor: checkProgressColor(testList1[5].spendTime)
                    ? progressColor
                    : backgroundColor,
                percent: testList1[5].percent,
              ),
            ),
          ),
        )
      ],
    );
  }
}
