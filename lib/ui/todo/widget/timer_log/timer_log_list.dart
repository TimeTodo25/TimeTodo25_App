import 'package:flutter/material.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import '../../../../entity/timer/timer_tbl.dart';
import 'timer_log_detail_data.dart';

class TimerLogList extends StatefulWidget {
  final List<TimerModel> logs;

  const TimerLogList({super.key, required this.logs});

  @override
  State<TimerLogList> createState() => _TimerLogListState();
}

class _TimerLogListState extends State<TimerLogList> {
  List<TimerLogDetails> timerLogData = [];

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

  // UI에 띄울 TimerHistory 텍스트 생성
  void _getLogText(List<TimerModel> logs) {
    if (logs.isEmpty) return;

    for (var log in logs) {
      bool isDuplicate = timerLogData.any((logData) => logData.idx == log.idx);
      if (isDuplicate) continue; // 중복이면 추가하지 않음

      int totalTm = int.tryParse(log.totalTm) ?? 0;
      String startedDt = log.historyStartDt;
      String endDt = log.historyEndDt;

      String startedTimeText = startedDt.isNotEmpty
          ? "${DateTimeUtils.formatOnlyTime(startedDt)} ${DateTimeUtils.formatTimeOnlyAMPM(startedDt).toLowerCase()}"
          : '';
      String pausedTimeText = endDt.isNotEmpty
          ? "${DateTimeUtils.formatOnlyTime(endDt)} ${DateTimeUtils.formatTimeOnlyAMPM(endDt).toLowerCase()}"
          : '';
      String spendTimeText = convertLogTimeToReadableFormat(totalTm);

      timerLogData.add(TimerLogDetails(
        idx: log.idx ?? 1,
        startedTime: startedTimeText,
        pausedTime: pausedTimeText,
        spendTime: spendTimeText,
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _getLogText(widget.logs);
  }

  @override
  void didUpdateWidget(covariant TimerLogList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.logs.last != oldWidget.logs.last) {
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