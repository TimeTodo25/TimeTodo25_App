import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/circular_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import 'package:time_todo/ui/todo/widget/timer_record_list_header.dart';

class CircleTimerStartScreen extends StatefulWidget {
  const CircleTimerStartScreen({super.key});

  @override
  State<CircleTimerStartScreen> createState() => _CircleTimerStartScreenState();
}

class _CircleTimerStartScreenState extends State<CircleTimerStartScreen> {
  String title = '수학문제집 10p~80p';
  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

  // 타이머 달성률
  double percent = 0.0;

  @override
  void initState() {
    super.initState();
  }

  // 시작시간만 있거나 둘다 안정했을 때의 화면
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
                      startTime: DateTime.now(),
                    )
                ),
                // 여백
                const SizedBox(height: 10),
                // 타이머 시간 기록되는 부분
                Flexible(
                  child: TimerRecordListHeader()
                ),
                // 여백
                const SizedBox(height: 10),
                // 시작 버튼
                TimerButton(onTap: () {}, color: mainBlue, title: '시작')
              ],
            )),
      ),
    );
  }
}
