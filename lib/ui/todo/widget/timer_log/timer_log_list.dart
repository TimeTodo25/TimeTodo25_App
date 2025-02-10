import 'package:flutter/material.dart';
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_time_text.dart';
import '../../../../entity/timer/timer_tbl.dart';

class TimerLogList extends StatefulWidget {
  final List<TimerModel> logs;

  const TimerLogList({super.key, required this.logs});

  @override
  State<TimerLogList> createState() => _TimerLogListState();
}

class _TimerLogListState extends State<TimerLogList> {
  // 초 단위를 읽기 쉬운 형식으로 변환 (s, m, h 단위로 표시)
  String convertLogTimeToReadableFormat(String totalTm) {
    int logTime = int.tryParse(totalTm) ?? 0;

    if (logTime < 60) {
      // 1분 미만인 경우: 초 단위(s)로 표시
      return "${logTime}s";
    } else if (logTime < 3600) {
      // 1시간 미만인 경우: 분과 초 단위로 표시
      int minutes = logTime ~/ 60; // 분 계산
      int seconds = logTime % 60; // 나머지 초 계산
      return seconds > 0 ? "${minutes}m ${seconds}s" : "${minutes}m";
    } else {
      // 1시간 이상인 경우: 시간, 분, 초 단위로 표시
      int hours = logTime ~/ 3600; // 시간 계산
      int remainingSeconds = logTime % 3600;
      int minutes = remainingSeconds ~/ 60;
      int seconds = remainingSeconds % 60;

      if (minutes > 0 && seconds > 0) {
        return "${hours}h ${minutes}m ${seconds}s";
      } else if (minutes > 0) {
        return "${hours}h ${minutes}m";
      } else if (seconds > 0) {
        return "${hours}h ${seconds}s";
      } else {
        return "${hours}h";
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant TimerLogList oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ...widget.logs.map((log) {
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Flexible(
                        child: Align(alignment: Alignment.centerLeft,
                            child: TimerLogTimeText(dateTime: log
                                .historyStartDt))
                    ),
                    Flexible(
                        child: Align(alignment: Alignment.center,
                            child: TimerLogTimeText(dateTime: log.historyEndDt))
                    ),
                    Flexible(
                        child: Align(alignment: Alignment.centerRight,
                            child: Text(convertLogTimeToReadableFormat(
                                log.totalTm)))
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}