import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day.dart';
import 'package:time_todo/ui/home/widget/home_24hour_section.dart';
import 'package:time_todo/ui/home/widget/home_calendar.dart';
import 'package:time_todo/ui/home/widget/tag_section.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';

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

  // 캘린더 크기 측정을 위한 GlobalKey
  final GlobalKey _calendarKey = GlobalKey();
  double _calendarHeight = 0;

  @override
  void initState() {
    super.initState();
    // 위젯이 그려진 후 크기를 측정하기 위해 addPostFrameCallback 사용
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _measureCalendarHeight();
    });
  }

  // void _measureCalendarHeight() {
  //   // GlobalKey를 통해 크기를 측정하고 상태를 업데이트
  //   final RenderBox renderBox = _calendarKey.currentContext?.findRenderObject() as RenderBox;
  //   setState(() {
  //     _calendarHeight = renderBox.size.height;
  //   });
  // }



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
            // 최상단 여백
            SizedBox(height: deviceHeight * 0.1),
            // 오늘의 목표
            TodayGoalSection(formattedDate: formattedDate, sumTime: sumTime, todayGoal: todayGoal, textGray: textGrey),
            // 여백
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                          offset: Offset(0, 1)
                                          )
                                    ]
                                ),
                                height: 150,
                                child: DDaySection(
                                    kDayItemCount: kDayItemCount,
                                    dateCountdown: dateCountdown
                                )
                            ),
                            TagSection(
                                tagName: tagName1,
                                tagColor: tagColor1,
                                tagItemCount: tagItemCount1,
                                maxWidth: deviceWidth
                            ),
                            TagSection(
                                tagName: tagName2,
                                tagColor: tagColor2,
                                tagItemCount: tagItemCount2,
                                maxWidth: deviceWidth
                            ),
                            TagSection(
                                tagName: tagName1,
                                tagColor: tagColor1,
                                tagItemCount: tagItemCount1,
                                maxWidth: deviceWidth
                            )
                          ]
                        ),
                      ),
                      // 가운데 여백
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              blurRadius: 3,
                                              spreadRadius: 0,
                                              offset: Offset(0, 1)
                                          )
                                        ]
                                    ),
                                    child: HomeCalendar(),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              blurRadius: 3,
                                              spreadRadius: 0,
                                              offset: Offset(0, 1)
                                          )
                                        ]
                                    ),
                                    child: Home24hourSection(),
                                  )
                            ]),
                      ),
                          ]),
                )
      )
    )]))]);


        // child: Column(
        //   children: [
        //     // 맨 위 여백
        //     SizedBox(height: deviceHeight * 0.1),
        //     // 오늘의 목표
        //     Padding(
        //       padding: const EdgeInsets.all(6.0),
        //       child: Container(
        //         child: TodayGoalSection(
        //             formattedDate: formattedDate,
        //             sumTime: sumTime,
        //             todayGoal: todayGoal,
        //             textGray: fontBlack),
        //       ),
        //     ),
        //     // 여백
        //     const SizedBox(height: 20),
        //     Expanded(
        //       child: SingleChildScrollView(
        //         // 컨테이너 그림자 짤리는 것 해결하기 위해 패딩 줌
        //         child: Padding(
        //           padding: EdgeInsets.only(left: 6, top: 6),
        //           child: Column(
        //             children: [
        //               // 첫번째 줄
        //               Row(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                 // 왼쪽 화면
        //                 Expanded(
        //                   child: Container(
        //                     constraints: BoxConstraints(
        //                       // 최대 높이를 캘린더 높이에 맞춤
        //                       maxHeight: state.carouselHeight
        //                     ),
        //                     padding: EdgeInsets.all(10),
        //                     decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         shape: BoxShape.rectangle,
        //                         borderRadius: BorderRadius.circular(10),
        //                         boxShadow: [ BoxShadow(
        //                             color: Colors.grey.withOpacity(0.5),
        //                             blurRadius: 3,
        //                             spreadRadius: 0,
        //                             offset: Offset(0, 1)
        //                         )]),
        //                     child: DDaySection(
        //                     kDayItemCount: kDayItemCount,
        //                     dateCountdown: dateCountdown),
        //                   )
        //                 ),
        //                 // 가운데 여백
        //                 const SizedBox(width: 16),
        //                 // 오른쪽 화면
        //                 Expanded(
        //                   // 주간 캘린더 들어갈 부분
        //                   child: Container(
        //                     key: _calendarKey,
        //                       decoration: BoxDecoration(
        //                           color: Colors.white,
        //                           shape: BoxShape.rectangle,
        //                           borderRadius: BorderRadius.circular(10),
        //                           boxShadow: [ BoxShadow(
        //                               color: Colors.grey.withOpacity(0.5),
        //                               blurRadius: 3,
        //                               spreadRadius: 0,
        //                               offset: Offset(0, 1)
        //                           )]),
        //                       child: HomeCalendar()
        //                       )
        //                 )
        //               ]),
        //               // 여백
        //               const SizedBox(height: 20),
        //               // 두번째 줄
        //               Row(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   // 왼쪽 화면
        //                   Expanded(
        //                     // 태그 투두 리스트 들어갈 부분
        //                       child: Column(
        //                         children: [
        //                           TagSection(
        //                               tagName: tagName1,
        //                               tagColor: tagColor1,
        //                               tagItemCount: tagItemCount1,
        //                               maxWidth: deviceWidth),
        //                           TagSection(
        //                               tagName: tagName1,
        //                               tagColor: tagColor1,
        //                               tagItemCount: tagItemCount1,
        //                               maxWidth: deviceWidth),
        //                           TagSection(
        //                               tagName: tagName1,
        //                               tagColor: tagColor1,
        //                               tagItemCount: tagItemCount1,
        //                               maxWidth: deviceWidth),
        //                         ],
        //                       )),
        //                   // 가운데 여백
        //                   const SizedBox(width: 16),
        //                   // 오른쪽 화면
        //                   Expanded(
        //                     child: Column(
        //                       children: [
        //                         Container(
        //                           child: Home24hourSection(),
        //                             decoration: BoxDecoration(
        //                                 color: Colors.white,
        //                                 shape: BoxShape.rectangle,
        //                                 borderRadius: BorderRadius.circular(10),
        //                                 boxShadow: [ BoxShadow(
        //                                     color: Colors.grey.withOpacity(0.5),
        //                                     blurRadius: 3,
        //                                     spreadRadius: 0,
        //                                     offset: Offset(0, 1)
        //                                 )])
        //                         ),
        //                         // 여백
        //                         SizedBox(height: 16),
        //                         // 코멘트
        //                         Container(
        //                           width: double.maxFinite,
        //                           height: deviceHeight * 0.15,
        //                           child: Center(child: Text('코멘트')),
        //                           decoration: BoxDecoration(
        //                               color: Colors.blue,
        //                               borderRadius: BorderRadius.circular(10),
        //                               boxShadow: [
        //                                 BoxShadow(
        //                                     color: Colors.grey.withOpacity(0.5),
        //                                     blurRadius: 3,
        //                                     spreadRadius: 0,
        //                                     offset: Offset(0, 1))
        //                               ]),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     // 맨 아래 여백
        //     SizedBox(height: deviceHeight * 0.01),
        //   ],
        // ),
    //   )
    // ]);
  }
}