import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/d_day_container.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/home_24hour_section.dart';
import 'package:time_todo/ui/home/widget/home_calendar.dart';
import 'package:time_todo/ui/home/widget/home_comment.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';
import '../../../entity/timer/timer_tbl.dart';
import '../widget/category_section_list_container.dart';

@RoutePage(name: 'HomeRouteTablet')
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

  // 오늘 타이머 사용한 총 시간 (임시 데이터)
  double sumTime = 8.45;

  // 각 아이템의 D-Day
  int dateCountdown = 100;

  // 목표 텍스트 컬러
  Color textGrey = const Color(0xFF606060);

  // 그라데이션 컬러 (테마 컬러)
  late Color themeColor;


  List<TimerModel> currentTimerModels = [];


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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();
    _fetchCategoryList();
    _fetchTodo();
    _initThemeColor();
  }

  void _initThemeColor() {
    themeColor = context.read<ThemeCubit>().state;
  }

  void _fetchCategoryList() {
    context.read<CategoryListBloc>().add(FetchCategoryList());
  }

  void _fetchTodo() {
    context.read<TodoListBloc>().add(FetchTodos());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientBackground(themeColor: themeColor),
      // 반응형 적용
      ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            // 최상단 여백
            SizedBox(height: deviceHeight * 0.1),
            // 오늘의 목표
            const TodayGoalSection(),
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
                                // D-DAY
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: const DDaySectionContainer(),
                                ),
                                // 카테고리, 투두
                                CategorySectionListContainer(deviceWidth: deviceWidth)
                              ]),
                          ),
                          // 가운데 여백
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(children: [
                              // 캘린더
                              Container(
                                decoration: boxDecoration,
                                child: const HomeCalendar(),
                              ),
                              const SizedBox(height: 10),
                              // 타이머 캘린더
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: boxDecoration,
                                child: const Home24HourSection(),
                              ),
                              const SizedBox(height: 10),
                              // 코멘트
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                decoration: boxDecoration,
                                child: const HomeComment(),
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
