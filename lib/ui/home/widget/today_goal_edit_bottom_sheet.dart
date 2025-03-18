import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
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
  String basicEmojiPath = "lib/assets/images/home_emoji_smile.png";
  late double _screenWidth;
  late double _buttonWidth;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getDeviceWidth();
  }

  void _getDeviceWidth() {
    _screenWidth = MediaQuery.of(context).size.width;
    _buttonWidth = _screenWidth <= 700 ? _screenWidth : 700;
  }

  @override
  Widget build(BuildContext context) {
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
            // 완료
          },
        ),
        // 날짜 선택
        Flexible(
          child: TodayGoalEditDayButton(dateTime: DateTime.now()),
        ),
        // 이모티콘 선택
        Flexible(
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TodayGoalIcon(iconPath: basicEmojiPath),
              TodayGoalIcon(iconPath: basicEmojiPath),
              TodayGoalIcon(iconPath: basicEmojiPath),
              TodayGoalIcon(iconPath: basicEmojiPath),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: const TextField(
              decoration: InputDecoration(
                hintText: '오늘의 목표를 작성해 주세요.',
                hintStyle: TextStyle(color: grey3),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: grey2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: fontBlack)
                ),
              ),
              maxLines: 9,
              cursorColor: fontBlack,
            ),
          ),
        ),
      Padding(
            padding: const EdgeInsets.all(20),
            child: TimerButton(onTap: () {}, color: mainBlue, title: '완료'),
          ),
      ]),
    );
  }
}
