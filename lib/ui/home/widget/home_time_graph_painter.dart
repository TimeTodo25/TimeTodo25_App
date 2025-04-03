import 'dart:ui';
import 'package:flutter/material.dart';
import 'hourly_timer_data.dart';

class TimeGraphPainter extends CustomPainter {
  final HourlyTimerData hourlyData;
  final Color borderColor;
  final Color backgroundColor;

  TimeGraphPainter({
    required this.hourlyData,
    this.borderColor = Colors.grey,
    this.backgroundColor = Colors.white,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final segmentWidth = width / 6; // 10분 간격 6개로 나눔

    // 배경 페인트
    final Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    // 테두리 페인트
    final Paint borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;

    // 구분선 페인트
    final Paint dividerPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;

    // 타일별로 그리기
    for (int i = 0; i < 6; i++) {
      final tileStartX = i * segmentWidth;
      final bool isFirstTile = i == 0;
      final bool isLastTile = i == 5;

      // 각 타일의 모서리 설정
      final RRect tileRect = RRect.fromRectAndCorners(
        Rect.fromLTWH(tileStartX, 0, segmentWidth, height),
        topLeft: isFirstTile ? const Radius.circular(8) : Radius.zero,
        bottomLeft: isFirstTile ? const Radius.circular(8) : Radius.zero,
        topRight: isLastTile ? const Radius.circular(8) : Radius.zero,
        bottomRight: isLastTile ? const Radius.circular(8) : Radius.zero,
      );

      // 타일 배경 그리기
      canvas.drawRRect(tileRect, backgroundPaint);

      // 타일 테두리 그리기
      canvas.drawRRect(tileRect, borderPaint);
    }

    // 타이머 데이터 그리기
    final int hourStart = hourlyData.hour;
    final DateTime baseTime = DateTime(2024, 1, 1, hourStart, 0, 0);

    for (final timerRange in hourlyData.timerRanges) {
      // 현재 시간대에 속하는 범위만 그리기
      if (timerRange.endTime.hour < hourStart || timerRange.startTime.hour > hourStart) {
        continue;
      }

      // 실제 그래프에 표시할 시작/종료 시간 계산
      DateTime graphStartTime = timerRange.startTime;
      if (graphStartTime.hour < hourStart) {
        graphStartTime = DateTime(
          graphStartTime.year,
          graphStartTime.month,
          graphStartTime.day,
          hourStart,
          0,
          0,
        );
      }

      DateTime graphEndTime = timerRange.endTime;
      if (graphEndTime.hour > hourStart) {
        graphEndTime = DateTime(
          graphEndTime.year,
          graphEndTime.month,
          graphEndTime.day,
          hourStart,
          59,
          59,
        );
      }

      // 시작 위치와 길이 계산 (0~1 사이의 값)
      final double startOffset = _calculateTimeOffset(baseTime, graphStartTime);
      final double endOffset = _calculateTimeOffset(baseTime, graphEndTime);

      // 실제 위치와 길이 계산
      final double startX = width * startOffset;
      final double rectWidth = width * (endOffset - startOffset);

      // 타이머 블록 그리기
      final Paint timerPaint = Paint()
        ..color = timerRange.color
        ..style = PaintingStyle.fill;

      canvas.drawRect(
        Rect.fromLTWH(startX, 0, rectWidth, height),
        timerPaint,
      );
    }

    // 각 타일의 세로 구분선 그리기
    for (int i = 1; i < 6; i++) {
      final double x = i * segmentWidth;
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, height),
        dividerPaint,
      );
    }
  }

  // 시간을 0~1 사이의 오프셋으로 변환
  double _calculateTimeOffset(DateTime baseTime, DateTime time) {
    const int totalMinutesInHour = 60;
    final int minutesPassed = time.minute + (time.second / 60).floor();
    return minutesPassed / totalMinutesInHour;
  }

  @override
  bool shouldRepaint(TimeGraphPainter oldDelegate) {
    return oldDelegate.hourlyData != hourlyData ||
        oldDelegate.borderColor != borderColor ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}