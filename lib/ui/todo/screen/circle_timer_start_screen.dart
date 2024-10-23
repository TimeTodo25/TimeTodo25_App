import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/circular_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';

class CircleTimerStartScreen extends StatefulWidget {
  const CircleTimerStartScreen({super.key});

  @override
  State<CircleTimerStartScreen> createState() => _CircleTimerStartScreenState();
}

class _CircleTimerStartScreenState extends State<CircleTimerStartScreen> {
  String title = '수학문제집 10p~80p';
  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // 앱바 아래 여백
                SizedBox(height: 10),
                // 타이머 부분
                Flexible(
                    child: CircularTimer()
                ),
                // 여백
                SizedBox(height: 30),
                // 타이머 시간 기록되는 부분
                Flexible(
                  child: timerRecord()
                ),
                // 여백
                SizedBox(height: 20),
                // 시작 버튼
                TimerButton(onTap: () {}, color: mainBlue, title: '시작')
              ],
            )),
      ),
    );
  }

  // 타이머 기록 구분할 제목
  Widget subTitle(String title) {
    return Text(title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3));
  }

  // 시간 기록된 부분
  Widget timerRecord() {
    return Column(
      children: [
        // 시작시간 멈춘시간 총시간 구분 텍스트
        SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              subTitle('시작시간'),
              subTitle('멈춘시간'),
              subTitle('총시간'),
            ],
          ),
        ),
        // 구분선 및 여백
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: AppComponents.greyDivider,
        ),
      ],
    );
  }
}
