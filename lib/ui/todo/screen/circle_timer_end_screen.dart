import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleTimerEndScreen extends StatefulWidget {
  const CircleTimerEndScreen({super.key});

  @override
  State<CircleTimerEndScreen> createState() => _CircleTimerEndScreenState();
}

class _CircleTimerEndScreenState extends State<CircleTimerEndScreen> {
  String title = '수학문제집 10p~80p';

  // 타이머에 나타낼 시, 분, 초 (흐르는 시간)
  List<String> displayTime = ['00', '00', '00'];
  List<String> displayStartTime = [];

  // todo 태그 컬러 받아와서 띄움
  Color todoColor = mainBlue;

  // todo 시작시간을 설정했다면 띄움
  final DateTime _startTime = DateTime.now();

  // 타이머 하단에 나타낼 시작 시간 정보
  void getStartTime() {
    displayStartTime = [
      _startTime.hour.toString(), // 시
      _startTime.minute.toString(), // 분
      DateFormat('a').format(_startTime).toLowerCase(), // AM 또는 PM
    ];
  }

  @override
  void initState() {
    getStartTime();

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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // 앱바 아래 여백
                SizedBox(height: 10),
                // 타이머 부분
                Flexible(
                  child: CircularPercentIndicator(
                    radius: 120,
                    lineWidth: 12,
                    animation: true,
                    // 달성률
                    percent: 0.7,
                    backgroundColor: grey1,
                    // 위젯 가운데에 나타낼 텍스트
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Container()),
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
                    progressColor: mainBlue,
                    // progress 테두리 설정
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                ),
                // 여백
                SizedBox(height: 30),
                // 타이머 시간 기록되는 부분
                Flexible(
                  child: Column(
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
                      // 기록된 텍스트가 보이는 부분
                      Container(
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                // 여백
                SizedBox(height: 20),
                // 시작 버튼
                TimerButton(onTap: () {}, color: mainRed, title: '멈춤')
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
}
