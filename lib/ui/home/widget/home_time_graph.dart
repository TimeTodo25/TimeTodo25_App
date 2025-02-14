import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

class HomeTimeGraph extends StatefulWidget {
  final List<double> percentList; // 6개짜리 percent 리스트 (각 10분 단위)

  const HomeTimeGraph({super.key, required this.percentList});

  @override
  State<HomeTimeGraph> createState() => _HomeTimeGraphState();
}

class _HomeTimeGraphState extends State<HomeTimeGraph> {
  Color backgroundColor = Colors.white; // 기본 배경색 (빈 영역)
  Color progressColor = mainBlue; // 그래프 색 (채워지는 부분)
  Color borderColor = grey2; // 그래프 테두리 색
  final double _lineHeight = 24; // 그래프 높이 설정

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.percentList.length, (index) {
        double percent = widget.percentList[index]; // 현재 블록의 진행 퍼센트 값

        // 현재 블록이 0부터 시작하지 않고 중간에서 시작하는 경우
        bool shouldInvert = percent > 0 && percent < 1;

        return Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: index == 0 ? const Radius.circular(8) : Radius.zero,
                bottomLeft: index == 0 ? const Radius.circular(8) : Radius.zero,
                topRight: index == widget.percentList.length - 1 ? const Radius.circular(8) : Radius.zero,
                bottomRight: index == widget.percentList.length - 1 ? const Radius.circular(8) : Radius.zero,
              ),
              border: Border.all(color: borderColor, width: 0.5), // 그래프 테두리 설정
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: index == 0 ? const Radius.circular(8) : Radius.zero,
                bottomLeft: index == 0 ? const Radius.circular(8) : Radius.zero,
                topRight: index == widget.percentList.length - 1 ? const Radius.circular(8) : Radius.zero,
                bottomRight: index == widget.percentList.length - 1 ? const Radius.circular(8) : Radius.zero,
              ),
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                lineHeight: _lineHeight,

                // 0부터 시작하지 않으면 진행 색과 배경색을 반전
                backgroundColor: shouldInvert ? progressColor : backgroundColor,
                progressColor: shouldInvert ? backgroundColor : progressColor,

                // 만약 중간부터 시작하면 남은 공간을 채워야 하므로 반전된 값 사용
                percent: shouldInvert ? 1 - percent : percent,
              ),
            ),
          ),
        );
      }),
    );
  }
}