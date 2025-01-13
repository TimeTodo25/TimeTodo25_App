import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class CategoryDeleteOrEndButton extends StatefulWidget {
  final double buttonHeight;

  const CategoryDeleteOrEndButton({
    super.key,
    required this.buttonHeight,
  });

  @override
  State<CategoryDeleteOrEndButton> createState() => _CategoryDeleteOrEndButtonState();
}

class _CategoryDeleteOrEndButtonState extends State<CategoryDeleteOrEndButton> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 왼쪽 버튼
        Flexible(
            child: GestureDetector(
              child: Container(
                height: widget.buttonHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: grey1, width: 2)),
                // 버튼 내 제목
                child: Center(
                    child: Text('삭제')
                ),
              )
            )
        ),
        // 버튼 사이 여백
        const SizedBox(width: 10),
        // 오른쪽 버튼
        // 왼쪽 버튼
        Flexible(
            child: GestureDetector(
              child: Container(
                height: widget.buttonHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: grey3, width: 2)),
                // 버튼 내 제목
                child: Center(
                    child: Text('종료')
                ),
              ),
            )),
      ],
    );
  }
}

// 중간사이즈 버튼 1개 생성하는 위젯
Widget makeMediumButton(double height, String title, bool isSelected) {
  return GestureDetector(
    child: Container(
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          // 테두리 (버튼 선택 되었을 때, 안 되었을 때 색깔 다름)
          border: Border.all(color: isSelected ? grey3 : grey1, width: 2)),
        // 버튼 내 제목
      child: Center(child: Text(title)),
    ),
    onTap: () {
      isSelected = !isSelected;
      print("isSelected $isSelected");
    },
  );
}
