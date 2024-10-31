import 'package:flutter/cupertino.dart';
import 'package:time_todo/assets/colors/color.dart';

class ContentChangeButton extends StatefulWidget {
  const ContentChangeButton({super.key});

  @override
  State<ContentChangeButton> createState() => _ContentChangeButtonState();
}

class _ContentChangeButtonState extends State<ContentChangeButton> {
  bool isClicked = false; // 상태 변수


  @override
  Widget build(BuildContext context) {
    Icon showTodoTimeIcon = Icon(CupertinoIcons.time, color: grey3);
    Icon showTodoCountIcon = Icon(CupertinoIcons.time_solid, color: grey3);

    // 캘린더 안에 띄울 내용 전환 버튼 (Todo 개수 or Todo 시간)
    return GestureDetector(
      child: isClicked ? showTodoCountIcon : showTodoTimeIcon,
      onTap: () {
        setState(() {
          isClicked = !isClicked; // 클릭할 때마다 상태 변경
        });
      },
    );  }
}
