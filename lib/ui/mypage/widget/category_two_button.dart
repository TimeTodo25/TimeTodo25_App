import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class MainTwoButton extends StatefulWidget {
  final double buttonHeight;
  final String? leftTitle;
  final String? rightTitle;

  const MainTwoButton({
    super.key,
    required this.buttonHeight,
    this.leftTitle,
    this.rightTitle
  });

  @override
  State<MainTwoButton> createState() => _MainTwoButtonState();
}

class _MainTwoButtonState extends State<MainTwoButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 왼쪽 버튼
        Flexible(
            child: makeMediumButton(
              // 높이
                widget.buttonHeight,
                // 타이틀
                widget.leftTitle ?? '삭제',
                // 선택 여부
                isSelected
            )),
        // 버튼 사이 여백
        const SizedBox(width: 10),
        // 오른쪽 버튼
        Flexible(
            child: makeMediumButton(
                // 높이
                widget.buttonHeight,
                // 타이틀
                widget.rightTitle ?? '종료',
                // 선택 여부
                isSelected)
        ),
      ],
    );
  }
}

// 중간사이즈 버튼 1개 생성하는 위젯
Widget makeMediumButton(double height, String title, bool isSelected) {
  return Container(
    // width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        // 테두리 (버튼 선택 되었을 때, 안 되었을 때 색깔 다름)
        border: Border.all(color: isSelected ? grey3 : grey1, width: 2),
        // 그림자
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(0, 1))
        ]),
    // 버튼 내 제목
    child: Center(child: Text(title)),
  );
}
