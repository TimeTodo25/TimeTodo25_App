import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

import '../../../../entity/timer/timer_tbl.dart';

class LinearTimerBarGraph extends StatefulWidget {
  final double maxWidth;
  final List<TimerModel> timerGraphs;
  final Color graphColor;
  final double targetTime; // 목표 시간 (초 단위)

  const LinearTimerBarGraph({super.key, required this.timerGraphs, required this.maxWidth, required this.graphColor, required this.targetTime});

  @override
  State<LinearTimerBarGraph> createState() => _LinearTimerBarGraphState();
}

class _LinearTimerBarGraphState extends State<LinearTimerBarGraph> {
  late List<TimerModel> nowGraphs;

  // 그래프의 처음, 마지막 부분에만 Radius 적용
  BorderRadius getGraphRadius(double totalWidth, double remainingWidth) {
    if (totalWidth < 5) {
      return const BorderRadius.horizontal(left: Radius.circular(10));
    } else if (remainingWidth < 10) {
      return const BorderRadius.horizontal(right: Radius.circular(10));
    } else {
      return BorderRadius.zero; // 중간 그래프
    }
  }

  @override
  void didUpdateWidget(covariant LinearTimerBarGraph oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.timerGraphs.length != oldWidget.timerGraphs.length) {
      nowGraphs = widget.timerGraphs;
    }
  }

  @override
  void initState() {
    super.initState();
    nowGraphs = widget.timerGraphs;
  }

  @override
  Widget build(BuildContext context) {
    double totalWidth = 0; // 현재까지 그려진 전체 너비

    return Stack(
      children: [
        // 막대 그래프 배경
        Container(
          width: widget.maxWidth,
            height: 20,
            decoration: BoxDecoration(
                color: grey2,
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: widget.maxWidth,
          ),
          child: Row(
            children: nowGraphs.map((graph) {
              double graphTime = double.tryParse(graph.totalTm) ?? 0.0;

              // 각 세그먼트의 비율 계산
              final graphRatio = graphTime / widget.targetTime;

              // 실제 그릴 너비 (비율 * 전체 그래프 넓이)
              final graphWidth = graphRatio * widget.maxWidth;

              // 남은 너비 계산
              final remainingWidth = widget.maxWidth - totalWidth;

              // 초과 여부 확인
              final isOverflow = totalWidth + graphWidth > widget.maxWidth;

              // 초과 시 남은 너비만큼 그리기
              final drawWidth = isOverflow ? remainingWidth : graphWidth;

              // 그래프 색상
              final color = graph.historyType == TimerLogType.started ? widget.graphColor : grey3;

              // borderRadius 계산
              final borderRadius = getGraphRadius(totalWidth, remainingWidth);

              // 너비 업데이트
              totalWidth += drawWidth;

              return Container(
                width: drawWidth.clamp(0, widget.maxWidth), // 막대 길이
                height: 20,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: borderRadius,
                ),
              );
            }).toList(),
          ),
        ),
      ]
    );
  }
}