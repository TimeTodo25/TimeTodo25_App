import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/circular_timer.dart';
import 'package:time_todo/ui/todo/widget/time_record_list.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import 'package:time_todo/ui/todo/widget/timer_record_list_header.dart';

class CircleTimerEndScreen extends StatefulWidget {
  const CircleTimerEndScreen({super.key});

  @override
  State<CircleTimerEndScreen> createState() => _CircleTimerEndScreenState();
}

class _CircleTimerEndScreenState extends State<CircleTimerEndScreen> {
  String title = '수학문제집 10p~80p';


  // 타이머에 나타낼 시, 분, 초 (흐르는 시간)
  List<String> displayTime = ['00', '00', '00'];
  // 임시 데이터...
  List<List<String>> timeRecord = [
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h'],
    ['12:30', 'pm', '02:30', 'pm', '2h']
  ];

  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

  // 타이머 달성률
  double percent = 0.9;

  @override
  void initState() {
    super.initState();
  }

  // 시작시간, 마침시간 둘 다 정했을 때의 화면
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TimerAppBar(
            title: title,
            backOnTap: () {
              // 뒤로 가기
              Navigator.pop(context);
            },
            titleColor: todoColor
        ),
        // 반응형 화면
        body: ResponsiveCenter(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // 타이머 부분
                Flexible(
                  child: CircularTimer(
                      percent: percent,
                      startTime: null
                  ),
                ),
                // 여백
                const SizedBox(height: 10),
                // 타이머 시간 기록되는 부분
                Flexible(
                  child: Column(
                    children: [
                      // 시작시간, 멈춘시간, 총시간 텍스트
                      TimerRecordListHeader(),
                      // 타이머 정지 기록 텍스트가 보이는 부분
                      Flexible(
                        child: TimeRecordList(
                            timeRecord: timeRecord
                        )
                      )
                    ],
                  ),
                ),
                // 여백
                const SizedBox(height: 10),
                // 시작 버튼
                TimerButton(onTap: () {}, color: mainRed, title: '멈춤')
              ],
            )),
      ),
    );
  }
}
