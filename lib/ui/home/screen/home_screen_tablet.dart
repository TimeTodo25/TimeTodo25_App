import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/home_24hour_section.dart';
import 'package:time_todo/ui/home/widget/home_calendar.dart';
import 'package:time_todo/ui/home/widget/home_comment.dart';
import 'package:time_todo/ui/home/widget/tag_section.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';
import 'package:time_todo/ui/todo/screen/todo_modify_screen.dart';

import '../../todo/screen/todo_add_screen.dart';

class HomeScreenTablet extends StatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  State<HomeScreenTablet> createState() => _HomeScreenTabletState();
}

class _HomeScreenTabletState extends State<HomeScreenTablet> {
  /// 추후 상태관리를 통해 모바일, 태블릿 화면 공통 변수 통합 필요
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

  // 커스텀 태그명
  String tagName1 = '운동';
  String tagName2 = '공부';

  BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 1))
      ]
  );


  /// 추후 상태관리를 통해 모바일, 태블릿 화면 공통 변수 통합 필요

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    print("width $deviceWidth");
    print("height $deviceHeight");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientBackground(themeColor: themeColor),
      // 반응형 적용
      ResponsiveCenter(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            // 최상단 여백
            SizedBox(height: deviceHeight * 0.1),
            // 오늘의 목표
            TodayGoalSection(
                formattedDate: formattedDate,
                sumTime: sumTime,
                todayGoal: todayGoal,
                textGray: textGrey),
            // 여백
            const SizedBox(height: 20),
            Expanded(
                child: ScrollConfiguration(
                  // 스크롤 바 안보이도록 설정
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Expanded(
                              child: Column(children: [
                                Container(
                                    decoration: boxDecoration,
                                    height: 150,
                                    child: DDaySection(
                                        kDayItemCount: kDayItemCount,
                                        dateCountdown: dateCountdown)),
                                TagSection(
                                    tagName: tagName1,
                                    tagColor: tagColor1,
                                    tagItemCount: tagItemCount1,
                                    maxWidth: deviceWidth,
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => TodoAddScreen(tagName: tagName1, tagColor: tagColor1,)));
                                    }
                                ),
                                TagSection(
                                    tagName: tagName2,
                                    tagColor: tagColor2,
                                    tagItemCount: tagItemCount2,
                                    maxWidth: deviceWidth,
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => TodoAddScreen(tagName: tagName1, tagColor: tagColor1,)));
                                    }
                                ),
                                TagSection(
                                    tagName: tagName1,
                                    tagColor: tagColor1,
                                    tagItemCount: tagItemCount1,
                                    maxWidth: deviceWidth,
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => TodoAddScreen(tagName: tagName1, tagColor: tagColor1,)));
                                    }
                                )
                              ]),
                          ),
                          // 가운데 여백
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(children: [
                              Container(
                                decoration: boxDecoration,
                                child: HomeCalendar(),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: boxDecoration,
                                child: Home24hourSection(),
                              ),
                              const SizedBox(height: 10),
                              // 코멘트
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: boxDecoration,
                                child: HomeComment(),
                              ),
                              const SizedBox(height: 10),
                            ]),
                          ),
                        ]),
                      )),
                ))
          ]))
    ]);
  }
}
