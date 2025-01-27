enum TimerLogType {
  started, // 시작 또는 재개버튼을 누른 시간 기록
  paused, // 멈춤버튼을 누른 시간 기록
}

class TimerLogEntry {
  final TimerLogType type; // 어떤 상태에 대한 기록인지
  final DateTime timestamp; // 발생 시간
  final int? spendTime; // 유지 시간

  TimerLogEntry({
    required this.type,
    required this.timestamp,
    this.spendTime,
  });
}