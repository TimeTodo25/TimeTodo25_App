import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar/calendar_bloc.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_edit_cubit.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/home/widget/today_goal_edit_day_button.dart';
import 'package:time_todo/ui/home/widget/today_goal_icon.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_button.dart';

class TodayGoalEditBottomSheet extends StatefulWidget {
  const TodayGoalEditBottomSheet({super.key});

  @override
  State<TodayGoalEditBottomSheet> createState() =>
      _TodayGoalEditBottomSheetState();
}

class _TodayGoalEditBottomSheetState extends State<TodayGoalEditBottomSheet> {
  String hintText = "오늘의 목표를 작성해 주세요.";
  final TextEditingController _controller = TextEditingController();
  final List<String> emojiPaths = [
    "lib/assets/images/home_emoji_smile.png",
    "lib/assets/images/test.png",
    "lib/assets/images/test.png",
    "lib/assets/images/test.png",
  ];

  late double _screenWidth;
  late double _buttonWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getDeviceWidth();
  }

  void _getDeviceWidth() {
    _screenWidth = MediaQuery.of(context).size.width;
    _buttonWidth = _screenWidth <= 700 ? _screenWidth : 700;
  }

  void _updateAndSaveTodayGoal() {
    final newDate = context.read<TodayGoalDateCubit>().state.goalDate;
    final newIcon = context.read<TodayGoalDateCubit>().state.goalIcon;
    
    context.read<TodayGoalBloc>().add(UpdateGoalDate(goalDate: newDate));
    context.read<TodayGoalBloc>().add(UpdateGoalText(goalText: _controller.text));
    context.read<TodayGoalBloc>().add(UpdateGoalIcon(iconPath: newIcon));
    context.read<TodayGoalBloc>().add(AddTodayGoal());

    _updateCalendarDate(newDate);
  }

  void _changeIcon(String icon) {
    context.read<TodayGoalDateCubit>().changeIcon(icon);
  }

  void _changeText(String text) {
    context.read<TodayGoalDateCubit>().changeText(text);
  }

  // 오늘의 목표 날짜 변경 -> 캘린더 선택된 날짜 변경
  void _updateCalendarDate(DateTime date) {
    context.read<CalendarBloc>().add(UpdateSelectedDay(date: date));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FractionallySizedBox(
        heightFactor: 0.62,  // 높이 설정
        child: Column(
          children: [
            // 상단 앱바
            MainAppBar(
              title: '날짜 및 목표',
              backOnTap: () {
                Navigator.pop(context);
              },
              actionText: '완료',
              actionOnTap: () {
                _updateAndSaveTodayGoal();
                Navigator.pop(context);
              },
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 18,
                  children: [
                    // 날짜 선택 버튼
                    BlocSelector<TodayGoalDateCubit, TodayGoalEditState, DateTime>(
                      selector: (state) => state.goalDate,
                      builder: (context, selectedDate) {
                        return const TodayGoalEditDayButton();
                      },
                    ),

                    // 이모티콘 선택
                    BlocSelector<TodayGoalDateCubit, TodayGoalEditState, String?>(
                      selector: (state) => state.goalIcon,
                      builder: (context, selectedIcon) {
                        return Row(
                          spacing: 20,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: emojiPaths.map((path) {
                            bool isSelected = path == selectedIcon;
                            return GestureDetector(
                              child: Opacity(
                                opacity: isSelected ? 1.0 : 0.5,
                                child: TodayGoalIcon(iconPath: path),
                              ),
                              onTap: () {
                                _changeIcon(path);
                              },
                            );
                          }).toList(),
                        );
                      },
                    ),

                    // 목표 텍스트 입력 필드
                    BlocSelector<TodayGoalDateCubit, TodayGoalEditState, String?>(
                      selector: (state) => state.goalText,
                      builder: (context, goalText) {
                        _controller.text = goalText ?? "";
                        return TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle: const TextStyle(color: grey3),
                            enabledBorder: customInputBorder(),
                            focusedBorder: customInputBorder(),
                          ),
                          maxLines: 6,
                          cursorColor: fontBlack,
                          onEditingComplete: () {
                            _changeText(_controller.text);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            // 완료 버튼
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: TimerButton(
                onTap: () {
                  _updateAndSaveTodayGoal();
                  Navigator.of(context).pop();
                },
                color: mainBlue,
                title: '완료',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


OutlineInputBorder customInputBorder() {
  return const OutlineInputBorder(
      borderRadius: BorderRadius.zero, borderSide: BorderSide(color: grey3));
}
