import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/calendar/calendar_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/bloc/home/home_bloc.dart';
import 'package:time_todo/bloc/home/home_event.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_event.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_state.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
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
  late double deviceWidth;
  late double deviceHeight;
  late Color themeColor;
  late DateTime _homeDate;

  @override
  void initState() {
    super.initState();
    _initHomeDate();
    _initThemeColor();

    _initData();
    _fetchHomeToServer();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  void _initThemeColor() {
    themeColor = context.read<ThemeCubit>().state;
  }

  void _initHomeDate() {
    _homeDate = DateTime.now();
  }

  void _fetchHomeToServer() {
    context.read<HomeBloc>().add(FetchHomeToServer(homeDate: _homeDate));
  }

  void _initData() {
    context.read<CategoryListBloc>().add(FetchCategoryList());
    context.read<AllTimerBloc>().add(GetTimerHistoryByDate(date: _homeDate));
    context.read<TodayGoalBloc>().add(GetTodayGoal(goalDate: _homeDate));
  }

  void _fetchDailyTodosByCategory(DateTime date, List<CategoryModel> categories) {
    for (var category in categories) {
      if (category.idx != null) {
        context.read<TodoListBloc>().add(
            GetTodosByCategory(categoryIdx: category.idx!, dateTime: date)
        );
      }
    }
  }

  void _updateTodayGoalTotalTm(double totalTm) {
    context.read<TodayGoalBloc>().add(UpdateTotalTm(totalTm: totalTm));
  }

  double _calculateTotalTm(Map<int, int> todoTotalTms) {
    final totalTmSum = todoTotalTms.values.fold(0, (sum, totalTm) => sum + totalTm);
    return DateTimeUtils.convertTotalTmToHours(totalTmSum);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // TodayGoal 상태 변화 감지
        BlocListener<TodayGoalBloc, TodayGoalState>(
          listenWhen: (previous, current) => previous.goalDate != current.goalDate,
          listener: (context, state) {
            final newDate = state.goalDate ?? DateTime.now();
            _homeDate = newDate;

            final categories = context.read<CategoryListBloc>().state.categories;
            _fetchDailyTodosByCategory(newDate, categories);

            context.read<AllTimerBloc>().add(GetTimerHistoryByDate(date: newDate));
          },
        ),

        // 카테고리 목록 상태 변화 감지
        BlocListener<CategoryListBloc, CategoryListState>(
          listenWhen: (previous, current) =>
          previous.categories.length != current.categories.length,
          listener: (context, state) {
            _fetchDailyTodosByCategory(_homeDate, state.categories);
          },
        ),

        // 타이머 상태 변화 감지
        BlocListener<AllTimerBloc, AllTimerState>(
          listenWhen: (previous, current) =>
          previous.status != current.status ||
              previous.todoTotalTms != current.todoTotalTms,
          listener: (context, state) {
            if (state.status == AllTimerStatus.success) {
              final totalTm = _calculateTotalTm(state.todoTotalTms);
              _updateTodayGoalTotalTm(totalTm);
            }
          },
        ),

        // 개별 투두의 상태 변화 감지
        BlocListener<TodoDetailBloc, TodoDetailState>(
            listener: (context, state) {
              final selectedDay = context.read<CalendarBloc>().state.selectedDay ?? DateTime.now();
              final categoryIdx = context.read<TodoDetailBloc>().state.categoryIdx ?? 0;
            if(state.status == TodoDetailStatus.updated) {
              // 달성률 update 시 캘린더 UI 재빌드
              context.read<TodoListBloc>().add(GetTodosByMonth(selectedDay));
            } else if(state.status == TodoDetailStatus.added) {
              // 투두 추가 시 홈화면 UI 재빌드
              context.read<TodoListBloc>().add(GetTodosByCategory(dateTime: selectedDay, categoryIdx: categoryIdx));
            }
        })
      ],
      child: BlocBuilder<ThemeCubit, Color>(
        builder: (context, themeColor) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                GradientBackground(themeColor: themeColor),
                ResponsiveCenter(
                  child: Column(
                    children: [
                      SizedBox(height: deviceHeight * 0.1),
                      // 오늘의 목표
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TodayGoalSection(),
                      ),
                      const SizedBox(height: 20),
                      // 스크롤 가능한 부분
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // 디데이
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: DDaySectionContainer(),
                              ),

                              const SizedBox(height: 10),

                              // 카테고리
                              CategorySectionListContainer(
                                deviceWidth: deviceWidth,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}