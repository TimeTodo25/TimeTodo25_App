import 'dart:ui';

// HourlyTimerData 의 세부 내용을 10분 간격으로 그리기 위해 필요한 정보
class HourlyTimerDetail {
  final double percent;
  final Color color;

  HourlyTimerDetail({required this.percent, required this.color});
}

// 1시간 간격 그래프
class HourlyTimerData {
  final int hour;
  final List<HourlyTimerDetail> segments; // 6개 (10분 간격)

  HourlyTimerData({required this.hour, required this.segments});
}