import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day.dart';
import 'package:time_todo/ui/home/widget/tag_section.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
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
    double bottomGradient = 56;

    // 컨테이너 사이즈
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 상단 그라데이션
          Positioned.fill(
            top: 0,
            child: Container(
                height: deviceHeight,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // 시작, 중간, 끝 색상
                    colors: [themeColor.withOpacity(0.1), Colors.white],
                    begin: Alignment(0.0, -2),
                    end: Alignment(0.0, -0.3),
                  ),
                )),
          ),
          // 하단 그라데아션
          Positioned(
            bottom: 0,
            child: Container(
              height: bottomGradient,
              width: deviceWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, gradientGrey],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
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
                              // D-DAY
                              Container(
                                  constraints: BoxConstraints(
                                    // 최소높이 지정
                                      minHeight: 150
                                  )
                                  ,height: deviceHeight * 0.18,
                                  child: DDaySection(
                                    kDayItemCount: 10,
                                    dateCountdown: dateCountdown,
                                  )),
                              // 여백
                              const SizedBox(height: 10),
                              TagSection(
                                  tagName: tagName1,
                                  tagColor: tagColor1,
                                  tagItemCount: tagItemCount1,
                                  maxWidth: deviceWidth),
                              TagSection(
                                  tagName: tagName1,
                                  tagColor: tagColor1,
                                  tagItemCount: tagItemCount1,
                                  maxWidth: deviceWidth),
                              TagSection(
                                  tagName: tagName1,
                                  tagColor: tagColor1,
                                  tagItemCount: tagItemCount1,
                                  maxWidth: deviceWidth),
                              TagSection(
                                  tagName: tagName1,
                                  tagColor: tagColor1,
                                  tagItemCount: tagItemCount1,
                                  maxWidth: deviceWidth),
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