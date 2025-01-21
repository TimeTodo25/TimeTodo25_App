import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/todo/widget/timer_log_list.dart';

import '../../utils/timer_log_entry.dart';

class TimerRecordListHeader extends StatefulWidget {
  final List<TimerLogEntry> timerLog;

  const TimerRecordListHeader({super.key, required this.timerLog});

  @override
  State<TimerRecordListHeader> createState() => _TimerRecordListHeaderState();
}

class _TimerRecordListHeaderState extends State<TimerRecordListHeader> {
  late List<TimerLogEntry> logs;

  @override
  void initState() {
    super.initState();
    initTimerLog();
  }

  @override
  void didUpdateWidget(covariant TimerRecordListHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.timerLog != widget.timerLog) {
      logs = widget.timerLog;
    }
  }

  void initTimerLog() {
    logs = widget.timerLog;
  }


  bool hasPausedLog() {
    if(logs.length > 1) {
      print("logs.length ${logs.length}");
      return true;
    } else {
      print("시작 로그밖에 없음 .. ${logs.length > 1}");
      return false;
    }
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
          child: hasPausedLog() ? TimerLogList(logs: logs) : SizedBox.shrink()
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