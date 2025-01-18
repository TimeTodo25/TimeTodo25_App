// 로그 종류: 시작시간, 멈춤시간, 총시간
enum TimerLogType { started, paused, totalSpendTime }

class TimerLogEntry {
  final TimerLogType type;
  final DateTime timestamp;
  final int? totalSpendTime;

  TimerLogEntry({
    required this.type,
    required this.timestamp,
    this.totalSpendTime,
  });
}