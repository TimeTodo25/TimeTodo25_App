import 'package:flutter/material.dart';
import 'package:time_todo/ui/todo/widget/timer_log_column.dart';
import '../../utils/timer_log_entry.dart';

class TimerLogList extends StatelessWidget {
  final List<TimerLogEntry> logs;

  const TimerLogList({super.key, required this.logs});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: LogColumn(logs: logs, filterType: TimerLogType.started, context: context))
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.center,
                    child: LogColumn(logs: logs, filterType: TimerLogType.paused, context: context))
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.centerRight,
                    child: LogColumn(logs: logs, filterType: TimerLogType.totalSpendTime, context: context))
            ),
          ],
        ),
      ]
    );
  }
}
