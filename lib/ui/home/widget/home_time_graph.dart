import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/home/widget/home_time_graph_painter.dart';
import 'hourly_timer_data.dart';

// TimeGraph 위젯
class HomeTimeGraph extends StatelessWidget {
  final HourlyTimerData hourlyData;

  const HomeTimeGraph({
    super.key,
    required this.hourlyData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24, // 높이 고정
      child: CustomPaint(
        painter: TimeGraphPainter(
          hourlyData: hourlyData,
          borderColor: grey3,
          backgroundColor: Colors.white,
        ),
        size: Size.infinite,
      ),
    );
  }
}