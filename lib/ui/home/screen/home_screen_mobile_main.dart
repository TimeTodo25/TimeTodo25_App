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

    // Initial data loading
    _initData();
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

  void _initData() {
    context.read<CategoryListBloc>().add(FetchCategoryList());
    context.read<AllTimerBloc>().add(GetTimerHistoryByDate(date: _homeDate));
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

            // Get categories and reload todos for the new date
            final categories = context.read<CategoryListBloc>().state.categories;
            _fetchDailyTodosByCategory(newDate, categories);

            // Reload timer history
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