import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_event.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_state.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
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
  // 화면 크기
  late double deviceWidth;
  late double deviceHeight;

  // 그라데이션 컬러 (테마 컬러)
  late Color themeColor;

  // 화면에 보이는 날짜
  late DateTime _homeDate;

  @override
  void initState() {
    super.initState();
    _fetchCategoryList();
    _initThemeColor();
    _initHomeDate();
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

  void _initHomeDate() {
    _homeDate = DateTime.now();
  }

  void _fetchHomeDate() {
    _homeDate = context.read<TodayGoalBloc>().state.goalDate ?? DateTime.now();
  }

  void _fetchCategoryList() {
    context.read<CategoryListBloc>().add(FetchCategoryList());
  }

  void _fetchDailyTodosByCategory() {
    _homeDate = context.read<TodayGoalBloc>().state.goalDate ?? DateTime.now();
    final categories = context.read<CategoryListBloc>().state.categories;

    for (var category in categories) {
      if(category.idx != null) {
        context.read<TodoListBloc>().add(GetTodosByCategory(categoryIdx: category.idx!, dateTime: _homeDate));
      }
    }
  }

  void _fetchHasTimerHistory() {
    /// 날짜 변경 시 해당 날짜 기준으로 타이머 기록을 가져오도록 수정
    context.read<AllTimerBloc>().add(GetTimerHistoryByDate(date: _homeDate));
  }

  void _fetchTotalTm() {
    int totalTmSum = _getTotalTmSum();
    double sumTodayTimer = _convertTotalTmFormat(totalTmSum);
    _updateTodayGoalTotalTm(sumTodayTimer);
  }

  void _updateTodayGoalTotalTm(double totalTm) {
    context.read<TodayGoalBloc>().add(UpdateTotalTm(totalTm: totalTm));
  }

  int _getTotalTmSum() {
    return context.read<AllTimerBloc>().state.todoTotalTms.values.fold(0, (sum, totalTm) => sum + totalTm);
  }

  double _convertTotalTmFormat(int totalTmSum) {
    return DateTimeUtils.convertTotalTmToHours(totalTmSum);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // TodayGoal 상태 변경 감지 리스너
        BlocListener<TodayGoalBloc, TodayGoalState>(
          listenWhen: (previous, current) => previous.goalDate != current.goalDate,
          listener: (context, state) {
            // 날짜가 변경되었을 때 Todo 목록과 타이머 기록 다시 불러오기
            _fetchHomeDate();
            _fetchDailyTodosByCategory();
            _fetchHasTimerHistory();
          },
        ),
        // CategoryList 상태 변경 감지 리스너
        BlocListener<CategoryListBloc, CategoryListState>(
          listener: (context, state) {
            _fetchDailyTodosByCategory();
          },
        ),
        // AllTimer 상태 변경 감지 리스너
        BlocListener<AllTimerBloc, AllTimerState>(
          listener: (context, state) {
            if(state.status == AllTimerStatus.success) {
              _fetchTotalTm();
            }
          },
        ),
      ],
      child: BlocBuilder<TodayGoalBloc, TodayGoalState>(
          builder: (context, todayGoalState) {
            _fetchHomeDate();

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
                        Padding(
                          // 양옆 여백
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TodayGoalSection()
                        ),
                        // 여백
                        const SizedBox(height: 20),
                        // 스크롤 되는 부분
                        Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // D-DAY
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: DDaySectionContainer(),
                                  ),
                                  // 여백
                                  const SizedBox(height: 10),
                                  // 카테고리, 투두
                                  CategorySectionListContainer(
                                    deviceWidth: deviceWidth,
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}