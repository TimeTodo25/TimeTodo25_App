
// 로그 리스트에서 특정 타입의 로그를 필터링하여 해당하는 시간을 텍스트로 표시
import 'package:flutter/material.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/timer_log_entry.dart';

class LogColumn extends StatelessWidget {
  final List<TimerLogEntry> logs;
  final TimerLogType filterType; // 필터링할 로그 타입 (시작, 멈춤, 총시간)
  final BuildContext context;

  const LogColumn({
    super.key,
    required this.logs,
    required this.filterType,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: logs
          .where((log) => log.type == filterType)
          .map((log) {
        String logText;
        // 로그 타입에 따른 처리
        switch(log.type) {
          case TimerLogType.started:
            logText = DateTimeUtils.formatTime(log.timestamp);
          case TimerLogType.paused:
            logText = DateTimeUtils.formatTime(log.timestamp);
          case TimerLogType.totalSpendTime:
            logText = '${log.totalSpendTime} m';
        }

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            logText,
            style: Theme.of(context).textTheme.bodyMedium, // 텍스트 스타일 적용
          ),
        );
      }).toList(),
    );
  }
}