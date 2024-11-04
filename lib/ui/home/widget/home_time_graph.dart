import 'dart:math';

import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class HomeTimeGraph extends StatefulWidget {
  const HomeTimeGraph({super.key});

  @override
  State<HomeTimeGraph> createState() => _HomeTimeGraphState();
}

class _HomeTimeGraphState extends State<HomeTimeGraph> {
  // 1시간 = 60분 = 60칸
  int itemCount = 60;

  // 1칸의 높이
  double cellHeight = 58;

  // 칠할 색상 (데이터 받아오기)
  Color themeColor = mainBlue;

  // 완성한 시간 (데이터 받아오기)
  // ex. 2시부터 2시 36분까지 = 36분
  int filledMinute = 36;

  // 색상 랜덤 적용을 위한 객체 선언
  final Random _random = Random();

  Color getRandomColor() {
    return Colors.primaries[_random.nextInt(Colors.primaries.length)];
  }

  BoxDecoration _getBoxDecoration(int index) {
    // 완료된 시간만큼 색상 채우기
    Color _color;
    (index < filledMinute)
        ? _color = themeColor
        : _color = Colors.white;

    // 구분선 설정
    bool isDivider = false;
    (index % 10 == 9)
        ? isDivider = true
        : isDivider = false;

    // 처음, 중간, 끝 각각 다른 데코레이션을 적용하기 위해 분기
    if (index == 0) {
      return firstBoxDecoration();
    }
    else if (index == itemCount - 1) {
      return lastBoxDecoration();
    } else {
      return midBoxDecoration(_color, isDivider);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 몇개의 아이템 배치할건지
          crossAxisCount: itemCount,
          // 1칸당 높이
          mainAxisExtent: cellHeight,
        ),
        // GridView 안에 들어갈 위젯을 생성하는 Builder
        childrenDelegate: SliverChildBuilderDelegate
          ((context, index) {
          // 칸의 배경색과 테두리 설정
          BoxDecoration decoration = _getBoxDecoration(index);
          return Container(
              child: Text('$index', style: TextStyle(fontSize: 8)),
              alignment: Alignment.center,
              // 첫번째 칸과 마지막 칸의 Radius 다르게 설정하기 위해 분기
              decoration: decoration);
        },
            // 표시할 아이템의 수
            childCount: itemCount));
  }


// 첫번째 index 일 떄 데코레이션
  BoxDecoration firstBoxDecoration() {
    return BoxDecoration(
        color: themeColor,
        border: const Border(left: BorderSide(color: grey3), top: BorderSide(color: grey3), bottom: BorderSide(color: grey3)),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10))
    );
  }

// 마지막 index 일 떄 데코레이션
  BoxDecoration lastBoxDecoration() {
    return BoxDecoration(
        color: (filledMinute == 60) ? themeColor : Colors.white,
        border: const Border(right: BorderSide(color: grey3), top: BorderSide(color: grey3), bottom: BorderSide(color: grey3)),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10))
    );
  }

// 그 외 Radius 설정 없는 칸들의 데코레이션
  BoxDecoration midBoxDecoration(Color color, bool isDivider) {
    return BoxDecoration(
        color: color,
        border: Border(
            top: BorderSide(color: grey3),
            bottom: BorderSide(color: grey3),
            right: (isDivider) ? BorderSide(color: Colors.red) : BorderSide.none
        )
    );
  }
}