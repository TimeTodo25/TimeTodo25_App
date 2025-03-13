import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_event.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_state.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/home/widget/category_section_list_container.dart';
import 'package:time_todo/ui/home/widget/d_day_container.dart';
import 'package:time_todo/ui/home/widget/gradient_background.dart';
import 'package:time_todo/ui/home/widget/today_goal.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

@RoutePage(name: 'HomeRouteMobileMain')
class HomeScreenMobileMain extends StatefulWidget {
  const HomeScreenMobileMain({super.key});

  @override
  State<HomeScreenMobileMain> createState() => _HomeScreenMobileMainState();
}

class _HomeScreenMobileMainState extends State<HomeScreenMobileMain> {
  // 날짜 표시형식
  String formattedDate = DateFormat('yyyy.MM.dd').format(DateTime.now());
  String todayGoal = '오늘의 목표를 작성해주세요.';

  // 화면 크기
  late double deviceWidth;
  late double deviceHeight;

  // 오늘 타이머 사용한 총 시간
  double sumTodayTimer = 0;

  // 그라데이션 컬러 (테마 컬러)
  late Color themeColor;

  @override
  void initState() {
    super.initState();
    _fetchCategoryList();
    _fetchTodo();
    _initThemeColor();
    _fetchHasTimerHistory();
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

  void _fetchCategoryList() {
    context.read<CategoryListBloc>().add(FetchCategoryList());
  }

  void _fetchTodo() {
    context.read<TodoListBloc>().add(FetchTodos());
  }

  void _fetchHasTimerHistory() {
    /// 추후 홈화면 날짜 받아서 변경하도록 수정 필요
    context.read<AllTimerBloc>().add(HasTimerHistory(date: DateTime.now()));
  }

  void _fetchTotalTm() {
    int totalTmSum = _getTotalTmSum();
    sumTodayTimer = _convertTotalTmFormat(totalTmSum);
  }

  int _getTotalTmSum() {
    return context.read<AllTimerBloc>().state.todoTotalTms.values.fold(0, (sum, totalTm) => sum + totalTm);
  }

  double _convertTotalTmFormat(int totalTmSum) {
    return DateTimeUtils.convertTotalTmToHours(totalTmSum);
  }

  @override
  Widget build(BuildContext context) {
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
                  BlocListener<AllTimerBloc, AllTimerState>(
                    listener: (context, state) {
                      if(state.status == AllTimerStatus.success) {
                        _fetchTotalTm();
                      }
                    },
                    child: Container(
                      child: Padding(
                        // 양옆 여백
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TodayGoalSection(
                            formattedDate: formattedDate,
                            sumTime: sumTodayTimer,
                            todayGoal: todayGoal,
                            textGray: fontBlack),
                      ),
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