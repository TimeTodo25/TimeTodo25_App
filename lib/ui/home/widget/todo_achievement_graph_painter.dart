import 'dart:math';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';

// 원을 그리기 위한 커스텀페인터
class TodoAchievementGraphPainter extends CustomPainter {
  final double totalPercent;
  final List<CategoryCalendarData> categories;
  final String text;
  final double textScaleFactor;

  TodoAchievementGraphPainter({
    required this.totalPercent,
    required this.categories,
    required this.text,
    this.textScaleFactor = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 배경 원 그리기 (회색, 100%)
    Paint backgroundPaint = Paint()
      ..color = Colors.grey[300]!  // 배경 원 색상
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    double radius = min(size.width / 2 - backgroundPaint.strokeWidth / 2,
        size.height / 2 - backgroundPaint.strokeWidth / 2);

    Offset center = Offset(size.width / 2, size.height / 2);

    // 배경 원은 항상 100%로 그린다.
    canvas.drawCircle(center, radius, backgroundPaint);

    // 진행 원 각도 (totalPercent 만큼만 그리기)
    double totalAngle = 2 * pi * (totalPercent / 100);
    double startAngle = -pi / 2;

    // 카테고리의 전체 달성률 합계 계산
    double totalAchievement = categories.fold(0.0, (sum, item) => sum + item.achievementRate);

    // 카테고리별로 진행 원 그리기
    for (var category in categories) {
      double categoryRatio = category.achievementRate / totalAchievement;
      double sweepAngle = totalAngle * categoryRatio;

      Paint categoryPaint = Paint()
        ..color = category.categoryColor  // 카테고리 색상
        ..strokeWidth = 5
        ..style = PaintingStyle.stroke;
        // ..strokeCap = StrokeCap.round; // 선 끝 둥글기 설정

      // 진행 원 그리기
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        categoryPaint,
      );

      startAngle += sweepAngle;  // 다음 카테고리 시작 각도로 업데이트
    }

    // 텍스트를 화면에 표시
    drawText(canvas, size, text);
  }

  // 원의 중앙에 텍스트를 적는다.
  void drawText(Canvas canvas, Size size, String text) {
    double fontSize = getFontSize(size, text);

    TextSpan sp = TextSpan(
        style: TextStyle(fontSize: 12, fontFamily: 'pretendardSemiBold', color: fontBlack),
        text: text
    );

    // CustomPainter에 글자를 적으려면 반드시 TextPainter를 사용해야 한다.
    // TextPainter는 텍스트의 좌표를 정하는데 쓰인다.
    TextPainter tp = TextPainter(text: sp, textDirection: TextDirection.ltr);

    // layout() 필수로 호출해야 한다. 텍스트 페인터에 그려질 텍스트의 크기와 방향을 결정한다.
    tp.layout();

    double dx = size.width / 2 - tp.width / 2;
    double dy = size.height / 2 - tp.height / 2;

    Offset offset = Offset(dx, dy);
    tp.paint(canvas, offset);
  }

  // 화면 크기에 비례하도록 텍스트 폰트 크기를 정한다.
  double getFontSize(Size size, String text) {
    return size.width / text.length * textScaleFactor;
  }

  // 다르면 다시 그리도록
  @override
  bool shouldRepaint(TodoAchievementGraphPainter old) {
    return old.totalPercent != totalPercent;
  }
}
