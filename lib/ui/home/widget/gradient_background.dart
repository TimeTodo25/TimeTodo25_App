import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class GradientBackground extends StatefulWidget {
  final Color themeColor;
  const GradientBackground({super.key, required this.themeColor});

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground> {

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // 상단 그라데이션
        Positioned.fill(
          top: 0,
          child: Container(
              height: deviceHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // 시작, 중간, 끝 색상
                  colors: [widget.themeColor.withOpacity(0.1), Colors.white],
                  begin: Alignment(0.0, -2),
                  end: Alignment(0.0, -0.3),
                ),
              )),
        ),
        // 하단 그라데아션
        Positioned(
          bottom: 0,
          child: Container(
            height: 56,
            width: deviceWidth,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, gradientGrey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
        ),
      ],
    );
  }
}