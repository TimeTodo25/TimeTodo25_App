import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/category/category_event.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/category_section_list_container.dart';
import 'package:time_todo/ui/home/widget/d_day_container.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';
import '../../../bloc/todo/todo_event.dart';

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

  // 오늘 타이머 사용한 총 시간 (임시 데이터)
  double sumTime = 8.45;

  // 그라데이션 컬러 (테마 컬러)
  late Color themeColor;

  @override
  void initState() {
    super.initState();
    _fetchCategory();
    _fetchTodo();
    _initThemeColor();
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

  void _fetchCategory() {
    context.read<CategoryBloc>().add(FetchCategory());
  }

  void _fetchTodo() {
    context.read<TodoBloc>().add(FetchTodo());
  }

  @override
  Widget build(BuildContext context) {
    // 컨테이너 사이즈
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 배경색
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
                        child: Column(
                          children: [
                            // D-DAY
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: const DDaySectionContainer(),
                           ),
                            // 여백
                            const SizedBox(height: 10),
                            // 카테고리, 투두
                            CategorySectionListContainer(deviceWidth: deviceWidth)
                          ],
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