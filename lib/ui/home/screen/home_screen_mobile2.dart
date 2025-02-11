import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar/timer_graph_bloc.dart';
import 'package:time_todo/bloc/calendar/timer_graph_event.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/home_24hour_section.dart';
import 'package:time_todo/ui/home/widget/home_calendar.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';

import '../../../bloc/theme_cubit.dart';

class HomeScreenMobile2 extends StatefulWidget {
  const HomeScreenMobile2({super.key});

  @override
  State<HomeScreenMobile2> createState() => _HomeScreenMobile2State();
}

/// 두번째 홈 화면
class _HomeScreenMobile2State extends State<HomeScreenMobile2> {
  // 날짜 표시형식
  String formattedDate = DateFormat('yyyy.MM.dd').format(DateTime.now());
  String todayGoal = '오늘의 목표를 작성해주세요.';

  // 화면 크기
  late double deviceWidth;
  late double deviceHeight;

  // 오늘 타이머 사용한 총 시간
  double sumTime = 8.45;

  // 그라데이션 컬러 (테마 컬러)
  late Color themeColor;

  @override
  void initState() {
    super.initState();
    _initThemeColor();
    _fetchTimerGraph();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  void _initThemeColor() {
    themeColor = context.read<ThemeCubit>().state;
  }

  void _fetchTimerGraph() {
    context.read<TimerGraphBloc>().add(FetchTimerGraph());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          GradientBackground(themeColor: themeColor),
          // 반응형
          ResponsiveCenter(
              child: Column(
                children: [
                  // 맨 위 여백
                  SizedBox(height: deviceHeight * 0.1),
                  // 오늘의 목표
                  Container(
                    child: Padding(
                      // 양옆 여백
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TodayGoalSection(
                          formattedDate: formattedDate,
                          sumTime: sumTime,
                          todayGoal: todayGoal,
                          textGray: fontBlack),
                    ),
                  ),
                  // 여백
                  const SizedBox(height: 20),
                  // 스크롤 되는 부분
                  Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              // 그림자 효과를 위해 캘린더 감싸는 컨테이너
                              Container(
                                // 캘린더
                                child: HomeCalendar(),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [ BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                        offset: Offset(0, 1)
                                    )]
                                ),
                              ),
                              // 여백
                              SizedBox(height: 20),
                              // 그림자 효과를 위해 타임그래프를 감싸는 컨테이너
                              Container(
                                child: Home24hourSection(),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [ BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                          offset: Offset(0, 1)
                                      )])
                              ),
                              // 최하단 여백
                              SizedBox(height: deviceHeight * 0.1)
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              )),
        ],
      ),
    );
  }
}