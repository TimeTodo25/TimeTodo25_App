import 'package:flutter/material.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/timer_log_entry.dart';
import '../timer_log_detail_data.dart';

class TimerLogList extends StatefulWidget {
  final List<TimerLogEntry> logs;

  const TimerLogList({super.key, required this.logs});

  @override
  State<TimerLogList> createState() => _TimerLogListState();
}

class _TimerLogListState extends State<TimerLogList> {
  List<TimerLogDetails> timerLogData = [];
  String startedTimeText = "";
  String pausedTimeText = "";
  String spendTimeText = "";

  // 초 단위를 분 단위로 변환
  int? convertLogTimeSecondsToMinutes(int? logTime) {
    if (logTime != null) {
      return logTime % 60;
    }
    return 0;
  }

  // 마지막 로그가 spendTime인지 확인
  bool _showLogData() => widget.logs.isNotEmpty && widget.logs.last.type == TimerLogType.spendTime;

  // 로그 텍스트 생성
  void _getLogText(List<TimerLogEntry> logs, bool showLogData) {
    if (!showLogData) return;

    for (var log in logs) {
      if (log.type == TimerLogType.started) {
        startedTimeText = DateTimeUtils.formatTime(log.timestamp);
      } else if (log.type == TimerLogType.paused) {
        pausedTimeText = DateTimeUtils.formatTime(log.timestamp);
      } else if (log.type == TimerLogType.spendTime) {
        spendTimeText = '${convertLogTimeSecondsToMinutes(log.spendTime)} m';
      }
    }

    timerLogData.add(TimerLogDetails(
      startedTime: startedTimeText,
      pausedTime: pausedTimeText,
      spendTime: spendTimeText,
    ));
  }

  @override
  void initState() {
    super.initState();
    _getLogText(widget.logs, _showLogData());
  }

  @override
  void didUpdateWidget(covariant TimerLogList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.logs.last.type != oldWidget.logs.last.type) {
        _getLogText(widget.logs, _showLogData());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ...timerLogData.map((logText) {
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Flexible(
                        child: Align(alignment: Alignment.centerLeft, child: Text(logText.startedTime))
                    ),
                    Flexible(
                        child: Align(alignment: Alignment.center, child: Text(logText.pausedTime))
                    ),
                    Flexible(
                        child: Align(alignment: Alignment.centerRight, child: Text(logText.spendTime))
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