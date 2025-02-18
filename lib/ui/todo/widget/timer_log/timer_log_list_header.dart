import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_list.dart';

class TimerLogListHeader extends StatefulWidget {
  final List<TimerModel> timerLog;

  const TimerLogListHeader({super.key, required this.timerLog});

  @override
  State<TimerLogListHeader> createState() => _TimerLogListHeaderState();
}

class _TimerLogListHeaderState extends State<TimerLogListHeader> {
  late List<TimerModel> logs;

  @override
  void initState() {
    super.initState();
    initTimerLog();
  }

  @override
  void didUpdateWidget(covariant TimerLogListHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.timerLog != widget.timerLog) {
      logs = widget.timerLog;
    }
  }

  void initTimerLog() {
    logs = widget.timerLog;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 소제목
        Row(children: [
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: subTitle(context, '시작시간'),
          )),
          Expanded(
              child: Align(
                alignment: Alignment.center,
                child: subTitle(context, '멈춘시간'),
          )),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: subTitle(context, '총시간'),
          )),
        ]),
        // 구분선 및 여백
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: AppComponents.greyDivider,
        ),
        // TimerLog 리스트
        Expanded(
          child: logs.isNotEmpty ? TimerLogList(logs: logs) : const SizedBox.shrink()
        )
      ],
    );
  }
}

// 타이머 기록 구분할 소제목
Widget subTitle(BuildContext context, String title) {
  return Text(title,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3));
}