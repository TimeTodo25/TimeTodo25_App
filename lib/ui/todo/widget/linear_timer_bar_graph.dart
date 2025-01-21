import 'package:flutter/material.dart';
import '../../utils/timer_log_entry.dart';

class LinearTimerBarGraph extends StatefulWidget {
  final List<TimerLogEntry> segments;
  final double maxWidth;

  const LinearTimerBarGraph({super.key, required this.segments, required this.maxWidth});

  @override
  State<LinearTimerBarGraph> createState() => _LinearTimerBarGraphState();
}

class _LinearTimerBarGraphState extends State<LinearTimerBarGraph> {
  @override
  Widget build(BuildContext context) {
    double totalWidth = 0; // 현재까지 그려진 전체 너비

    return Row(
      children: widget.segments.map((segment) {
        final segmentWidth = segment.spendTime?.toDouble() ?? 0;
        final lastSegmentType = segment.type;

        // 추가된 너비가 화면을 초과하는지 확인
        if (totalWidth + segmentWidth > widget.maxWidth) {
          final remainingWidth = widget.maxWidth - totalWidth;
          if (remainingWidth > 0) {
            totalWidth += remainingWidth;
            return Container(
              width: remainingWidth,
              height: 20,
              color: lastSegmentType == TimerLogType.started ? Colors.red : Colors.green,
            );
          } else {
            return Container(); // 더 이상 그리지 않음
          }
        }

        // 초과하지 않으면 그대로 그리기
        totalWidth += segmentWidth;
        return Container(
          width: segmentWidth.clamp(0, widget.maxWidth), // 막대 길이
          height: 20,
          color: lastSegmentType == TimerLogType.started ? Colors.red : Colors.green,
        );
      }).toList(),
    );
  }
}