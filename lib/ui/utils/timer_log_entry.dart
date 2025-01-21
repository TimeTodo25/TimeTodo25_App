enum TimerLogType {
  started, // 시작 또는 재개버튼을 누른 시간 기록
  paused, // 멈춤버튼을 누른 시간 기록
  spendTime, // 진행 or 멈춤 상태의 유지 시간을 기록. 각 그래프의 길이를 계산하기 위한 수치
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