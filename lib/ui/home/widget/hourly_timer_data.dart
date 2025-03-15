import 'dart:ui';

// 타이머 시간 범위 정보
class TimerRange {
  final DateTime startTime;
  final DateTime endTime;
  final Color color;

  TimerRange({
    required this.startTime,
    required this.endTime,
    required this.color,
  });
}

// 시간대별 타이머 데이터
class HourlyTimerData {
  final int hour;
  final List<TimerRange> timerRanges;

  HourlyTimerData({
    required this.hour,
    required this.timerRanges,
  });
}