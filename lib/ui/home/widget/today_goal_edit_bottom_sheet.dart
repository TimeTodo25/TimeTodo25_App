import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
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

  String _selectedIcon = '';

  late double _screenWidth;
  late double _buttonWidth;

  @override
  void initState() {
    super.initState();
    _fetchTodayGoal();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getDeviceWidth();
  }

  void _fetchTodayGoal() {
    _selectedIcon = context.read<TodayGoalBloc>().state.goalIconPath;
    _controller.text = context.read<TodayGoalBloc>().state.goalText;
  }

  void _getDeviceWidth() {
    _screenWidth = MediaQuery.of(context).size.width;
    _buttonWidth = _screenWidth <= 700 ? _screenWidth : 700;
  }

  void _updateGoalText() {
    context
        .read<TodayGoalBloc>()
        .add(UpdateGoalText(goalText: _controller.text));
  }

  void _updateGoalIcon() {
    context.read<TodayGoalBloc>().add(UpdateGoalIcon(iconPath: _selectedIcon));
  }

  void _updatedTodayGoal() {
    _updateGoalText();
    _updateGoalIcon();
  }

  void _selectGoalIcon(String icon) {
    setState(() {
      _selectedIcon = icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodayGoalBloc, TodayGoalState>(
        builder: (context, state) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainAppBar(
                title: '날짜 및 목표',
                backOnTap: () {
                  Navigator.pop(context);
                },
                actionText: '완료',
                actionOnTap: () {
                  _updatedTodayGoal();
                  Navigator.pop(context);
                },
              ),
              // 날짜 선택
              Flexible(
                child: TodayGoalEditDayButton(
                    dateTime: state.goalDate ?? DateTime.now()),
              ),
              // 이모티콘 선택
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: emojiPaths.map((path) {
                    bool isSelected = path == _selectedIcon; // 선택된 아이콘인지 확인

                    return GestureDetector(
                      child: Opacity(
                          opacity: isSelected ? 1.0 : 0.5,
                          child: TodayGoalIcon(iconPath: path)),
                      onTap: () {
                        _selectGoalIcon(path);
                      },
                    );
                  }).toList(),
                ),
              ),
              // 목표 텍스트 입력
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: const TextStyle(color: grey3),
                        enabledBorder: customInputBorder(),
                        focusedBorder: customInputBorder()),
                    maxLines: 9,
                    cursorColor: fontBlack,
                  ),
                ),
              ),
              // 완료 버튼
              Padding(
                padding: const EdgeInsets.all(20),
                child: TimerButton(
                    onTap: () {
                      _updatedTodayGoal();
                      Navigator.of(context).pop();
                    },
                    color: mainBlue,
                    title: '완료'),
              ),
            ]),
      );
    });
  }
}

OutlineInputBorder customInputBorder() {
  return const OutlineInputBorder(
      borderRadius: BorderRadius.zero, borderSide: BorderSide(color: grey3));
}
