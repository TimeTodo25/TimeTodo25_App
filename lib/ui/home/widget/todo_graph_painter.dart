import 'dart:math';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';


/// 원 그리기 위해 임시로 생성한 데이터 클래스
class TodoItem {
  // 해당 카테고리에서 완료한 todo 비율
  final double categoryPercent;
  final Color categoryColor;

  TodoItem({required this.categoryPercent, required this.categoryColor});
}


// 원을 그리기 위한 커스텀페인터
class PieChart extends CustomPainter {
  final double clearPercent;
  final List<TodoItem> todoItem;
  final String text;
  final double textScaleFactor;

  PieChart({
    required this.clearPercent,
    required this.todoItem,
    required this.text,
    this.textScaleFactor = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 화면에 그릴 paint 정의
    Paint paint = Paint()
        ..color = Colors.blue
      // 선 두께
        ..strokeWidth = 5
      // 테두리만 그리기
        ..style = PaintingStyle.stroke
      // 선 끝 모양
        ..strokeCap = StrokeCap.butt;

    // 원의 반지름을 구한다. 선의 굵기에 영향을 받지 않게 보정
    double radius = min(size.width / 2 - paint.strokeWidth /2,
      size.height / 2 - paint.strokeWidth / 2);

    // 그래프가 화면 가운데로 그려지도록 좌표를 정한다.
    Offset center = Offset(size.width / 2, size.height / 2);

    // 원을 그리기 전에 기본 원 그리기
    paint.color = Colors.white; //  기본 원 색상

    // 호(arc)의 각도를 정한다. 정해진 각도만큼만 그린다.
    double startAngle = -1 * pi / 2;

    // 여러 색상으로 호 그리기
    for (int i = 0; i < todoItem.length; i++) {
      // 각 색상의 비율을 정합니다. (예: 100%를 여러 색상으로 나누기)
      // percentage = 완료된 todo 퍼센트
      double segmentPercentage = (todoItem[i].categoryPercent / clearPercent) / todoItem.length;
      double segmentAngle = -2 * pi * segmentPercentage;

      // 색상 가져 오기
      paint.color = todoItem[i].categoryColor;

      // 원 그리기
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        segmentAngle,
        false,
        paint,
      );

      startAngle += segmentAngle; // 다음 색상의 시작 각도를 업데이트
    }

    // 텍스트를 화면에 표시한다.
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
  bool shouldRepaint(PieChart old) {
    return old.clearPercent != clearPercent;
  }
}
