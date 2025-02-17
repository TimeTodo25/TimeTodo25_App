import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'hourly_timer_data.dart';

class HomeTimeGraph extends StatefulWidget {
  final HourlyTimerData hourlyData;

  const HomeTimeGraph({super.key, required this.hourlyData});

  @override
  State<HomeTimeGraph> createState() => _HomeTimeGraphState();
}

class _HomeTimeGraphState extends State<HomeTimeGraph> {
  Color backgroundColor = Colors.white; // 빈 영역 배경색
  Color progressColor = mainBlue; // 진행 색상
  Color borderColor = grey2; // 테두리 색
  final double _lineHeight = 24; // 그래프 높이 설정
  int timerDataLength = 0;

  void getTimerModelInfo() {
    timerDataLength = widget.hourlyData.segments.length;
  }

  // 첫번째와 마지막 인덱스에 대한 radius를 설정하는 메서드
  BorderRadius checkRadius(int index) {
    int firstIndex = 0;
    int lastIndex = timerDataLength - 1;

    return BorderRadius.only(
      topLeft: index == firstIndex ? const Radius.circular(8) : Radius.zero,
      bottomLeft: index == firstIndex ? const Radius.circular(8) : Radius.zero,
      topRight: index == lastIndex ? const Radius.circular(8) : Radius.zero,
      bottomRight: index == lastIndex ? const Radius.circular(8) : Radius.zero,
    );
  }

  @override
  void initState() {
    super.initState();
    getTimerModelInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(timerDataLength, (index) {
        HourlyTimerDetail timerDetail = widget.hourlyData.segments[index];
        double percent = timerDetail.percent;  // 그래프 완성 비율 (10분 기준)
        progressColor = timerDetail.color;

        // 만약 그래프의 중간부터 시작하면 남은 공간을 채워야 하므로 반전된 색상 값 사용
        bool shouldInvert = percent > 0 && percent < 1;

        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: checkRadius(index), // checkRadius 메서드를 사용
              border: Border.all(color: borderColor, width: 0.5), // 그래프 테두리
            ),
            child: ClipRRect(
              borderRadius: checkRadius(index), // checkRadius 메서드를 사용
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                lineHeight: _lineHeight,
                backgroundColor: shouldInvert ? progressColor : backgroundColor,
                progressColor: shouldInvert ? backgroundColor : progressColor,
                percent: shouldInvert ? 1 - percent : percent,
              ),
            ),
          ),
        );
      }),
    );
  }
}