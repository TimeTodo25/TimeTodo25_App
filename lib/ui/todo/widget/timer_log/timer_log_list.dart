import 'package:flutter/material.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_target_time_info_text.dart';
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_segment.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'timer_log_detail_data.dart';

class TimerLogList extends StatefulWidget {
  final List<Segment> logs;

  const TimerLogList({super.key, required this.logs});

  @override
  State<TimerLogList> createState() => _TimerLogListState();
}

class _TimerLogListState extends State<TimerLogList> {
  List<TimerLogDetails> timerLogData = [];
  String startedTimeText = "";
  String pausedTimeText = "";
  String spendTimeText = "";

// 초 단위를 읽기 쉬운 형식으로 변환 (s, m, h 단위로 표시)
  String convertLogTimeToReadableFormat(int? logTime) {
    if (logTime == null) return "0s";

    if (logTime < 60) {
      // 1분 미만인 경우: 초 단위(s)로 표시
      return "${logTime}s";
    } else if (logTime < 3600) {
      // 1시간 미만인 경우: 분과 초 단위로 표시
      int minutes = logTime ~/ 60; // 분 계산
      int seconds = logTime % 60;  // 나머지 초 계산
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

  // 로그 텍스트 생성
  void _getLogText(List<Segment> logs) {
    if(logs.isEmpty) return;

    for (var log in logs) {
      // 12:00 pm 형식으로 변환
      if (log.type == TimerLogType.started) {
        startedTimeText = "${DateTimeUtils.formatOnlyTime(log.timestamp)} ${DateTimeUtils.formatTimeOnlyAMPM(log.timestamp).toLowerCase()}";
      } else if (log.type == TimerLogType.paused) {
        pausedTimeText = "${DateTimeUtils.formatOnlyTime(log.timestamp)} ${DateTimeUtils.formatTimeOnlyAMPM(log.timestamp).toLowerCase()}";
      }
      // 총시간 계산
      spendTimeText = convertLogTimeToReadableFormat(log.spendTime);
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
    _getLogText(widget.logs);
  }

  @override
  void didUpdateWidget(covariant TimerLogList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.logs.last.timestamp != oldWidget.logs.last.timestamp) {
        _getLogText(widget.logs);
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