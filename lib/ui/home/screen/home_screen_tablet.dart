import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/components/widget/breakpoint.dart';
import 'package:time_todo/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day.dart';
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
  Widget build(BuildContext context) {
    double bottomGradient = 56;

    // 컨테이너 사이즈
    return Stack(children: [
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
      // 반응형 적용
      ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // 맨 위 여백
            SizedBox(height: deviceHeight * 0.1),
            // 오늘의 목표
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                child: TodayGoalSection(
                    formattedDate: formattedDate,
                    sumTime: sumTime,
                    todayGoal: todayGoal,
                    textGray: fontBlack),
              ),
            ),
            // 여백
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                // 컨테이너 그림자 짤리는 것 해결하기 위해 패딩 줌
                child: Padding(
                  padding: EdgeInsets.only(left: 6, top: 6),
                  child: Column(
                    children: [
                      // 첫번째 줄
                      Row(children: [
                        // 왼쪽 화면
                        Expanded(
                          child: Container(
                            width: BreakPoint.tablet / 2,
                            height: 150,
                            child: DDaySection(
                                kDayItemCount: kDayItemCount,
                                dateCountdown: dateCountdown),
                          ),
                        ),
                        // 가운데 여백
                        const SizedBox(width: 16),
                        // 오른쪽 화면
                        Expanded(
                          // 주간 캘린더 들어갈 부분
                          child: Container(
                              width: BreakPoint.tablet / 2,
                              height: 150,
                              // constraints: BoxConstraints(maxWidth: 320, minHeight: 150),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text('data1'),
                              )),
                        )
                      ]),
                      // 여백
                      const SizedBox(height: 20),
                      // 두번째 줄
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 왼쪽 화면
                          Expanded(
                            // 태그 투두 리스트 들어갈 부분
                              child: Column(
                                children: [
                                  TagSection(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => TodoModifyScreen(tagName: tagName1, tagColor: tagColor1,)));
                                      },
                                      tagName: tagName1,
                                      tagColor: tagColor1,
                                      tagItemCount: tagItemCount1,
                                      maxWidth: deviceWidth),
                                  TagSection(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => TodoAddScreen(tagName: tagName1, tagColor: tagColor1,)));
                                      },
                                      tagName: tagName1,
                                      tagColor: tagColor1,
                                      tagItemCount: tagItemCount1,
                                      maxWidth: deviceWidth),
                                  TagSection(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => TodoAddScreen(tagName: tagName1, tagColor: tagColor1,)));
                                      },
                                      tagName: tagName1,
                                      tagColor: tagColor1,
                                      tagItemCount: tagItemCount1,
                                      maxWidth: deviceWidth),
                                ],
                              )),
                          // 가운데 여백
                          const SizedBox(width: 16),
                          // 오른쪽 화면
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  height: deviceHeight * 0.4,
                                  child: Center(child: Text('캘린더')),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                            offset: Offset(0, 1))
                                      ]),
                                ),
                                // 여백
                                SizedBox(height: 16),
                                // 코멘트
                                Container(
                                  width: double.maxFinite,
                                  height: deviceHeight * 0.15,
                                  child: Center(child: Text('코멘트')),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                            offset: Offset(0, 1))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // 맨 아래 여백
            SizedBox(height: deviceHeight * 0.01),
          ],
        ),
      )
    ]);
  }
}