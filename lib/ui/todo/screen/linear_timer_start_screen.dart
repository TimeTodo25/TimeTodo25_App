import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/linear_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import 'package:time_todo/ui/todo/widget/timer_record_list_header.dart';

class LinearTimerStartScreen extends StatefulWidget {
  const LinearTimerStartScreen({super.key});

  @override
  State<LinearTimerStartScreen> createState() => _LinearTimerStartScreenState();
}

class _LinearTimerStartScreenState extends State<LinearTimerStartScreen> {
  String title = '수학문제집 10p~80p';

  Color themeColor = mainBlue;
  double percent = 0.0;

  // 임시 데이터...
  List<List<String>> timeRecord = [
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
  ];

  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(Duration(hours: 2));

  // string 형태로 변환한 정보를 담을 변수
  List<String> startTimeInfo = [];
  List<String> endTimeInfo = [];

  // 막대 타이머 위에 나타낼 시작시간, 마침시간 정보
  void convertDateTimeToString() {
    startTimeInfo = [
      DateFormat('hh').format(startTime), // 12시간 형식의 시
      DateFormat('mm').format(startTime), // 분
      DateFormat('a').format(startTime).toLowerCase(), // AM 또는 PM
    ];
    endTimeInfo = [
      DateFormat('hh').format(endTime), // 12시간 형식의 시
      DateFormat('mm').format(endTime), // 분
      DateFormat('a').format(endTime).toLowerCase(), // AM 또는 PM
    ];
  }

  @override
  void initState() {
    convertDateTimeToString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: TimerAppBar(title: title, backOnTap: () {}, titleColor: mainBlue),
          body: ResponsiveCenter(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      // 앱바 아래 여백
                      const SizedBox(height: 10),
                      // 흐르는 시간 표시
                      Flexible(
                        flex: 4,
                        child:
                        Center(
                            child: Text(
                              '00 : 00 : 00',
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 30))
                        ),
                      ),
                      // 여백
                      const SizedBox(height: 10),
                      // 막대 타이머
                      Flexible(
                        flex: 2,
                        child:
                        LinearTimer(
                            color: themeColor,
                            percent: percent,
                            startTime: startTimeInfo,
                            endTime: endTimeInfo
                        ),
                      ),
                      // 타이머 정지 기록 텍스트가 보이는 부분
                      Flexible(
                        flex: 6,
                          child:
                          TimerRecordListHeader(),
                      ),
                      // 여백
                      const SizedBox(height: 10),
                      TimerButton(
                        onTap: () {  },
                        color: themeColor,
                        title: '시작',
                      ),
                    ],
                  )
              ),
    ));
  }
}
