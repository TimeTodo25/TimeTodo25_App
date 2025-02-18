import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/home_24hour_section.dart';
import 'package:time_todo/ui/home/widget/home_calendar.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';
import 'package:time_todo/ui/home/widget/category_section.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';
import 'package:table_calendar/table_calendar.dart';

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

  // 각 리스트에 띄울 아이템 개수
  int kDayItemCount = 10; // D-Day
  int tagItemCount1 = 2; // 태그 1
  int tagItemCount2 = 2; // 태그 2

  // 각 아이템의 D-Day
  int dateCountdown = 100;

  // 목표 텍스트 컬러
  Color textGrey = const Color(0xFF606060);

  // 그라데이션 컬러 (테마 컬러)
  Color themeColor = mainBlue;

  // 커스텀 태그 컬러
  Color tagColor1 = mainBlue;
  Color tagColor2 = mainGreen;

  // 커스텀 태그 아이콘
  Icon tagIcon1 = Icon(Icons.directions_run, size: 16);
  Icon tagIcon2 = Icon(Icons.article, size: 16);

  // 커스텀 태그명
  String tagName1 = '운동';
  String tagName2 = '공부';

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
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
                      )),
                  // 맨 아래 여백
                  // SizedBox(height: deviceHeight * 0.05),
                ],
              )),
        ],
      ),
    );
  }
}