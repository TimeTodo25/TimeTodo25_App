import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
import 'package:time_todo/ui/home/widget/today_goal_edit_bottom_sheet.dart';
import 'package:time_todo/ui/home/widget/today_goal_icon.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class TodayGoalSection extends StatefulWidget {
  final double totalTm;

  const TodayGoalSection({super.key, required this.totalTm});

  @override
  State<TodayGoalSection> createState() => _TodayGoalSectionState();
}

class _TodayGoalSectionState extends State<TodayGoalSection> {
  DateTime goalDate = DateTime.now();
  String todayGoal = '오늘의 목표를 작성해 주세요';

  @override
  void initState() {
    super.initState();
  }

  void _fetchTodayGoal() {

  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))
        ),
        useSafeArea: true,
        builder: (context) => const TodayGoalEditBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodayGoalBloc, TodayGoalState>(
        builder: (context, state) {
      return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          _showModalBottomSheet();
        },
        child: SizedBox(
          child: Row(
            children: [
              // 아이콘
              TodayGoalIcon(iconPath: state.goalIconPath),
              // 여백
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 오늘 날짜 및 총 소모 시간 표시
                    TodayGoalDate(today: goalDate, totalTm: widget.totalTm),
                    // 오늘의 목표 텍스트
                    Text(todayGoal,
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

// 날짜와 총 공부시간 표시 위젯
class TodayGoalDate extends StatelessWidget {
  final DateTime today;
  final double totalTm;

  const TodayGoalDate({
    super.key,
    required this.today,
    required this.totalTm,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(DateTimeUtils.formatDateDot(today),
            style:
                Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20)),
        Row(
          children: [
            const Icon(CupertinoIcons.alarm_fill, color: Colors.grey, size: 16),
            const SizedBox(width: 4),
            Text('$totalTm h'),
          ],
        ),
      ],
    );
  }
}
