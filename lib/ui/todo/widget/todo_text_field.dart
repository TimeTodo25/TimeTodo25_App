import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_main.dart';

import '../../../assets/colors/color.dart';

class TodoTextField extends StatefulWidget {

  final TextEditingController controller;
  final String tagName;
  final Color tagColor;

  const TodoTextField({
    super.key,
    required this.tagColor,
    required this.tagName,
    required this.controller
  });

  @override
  State<TodoTextField> createState() => _TodoTextFieldState();
}

class _TodoTextFieldState extends State<TodoTextField> {

  // 텍스트 길이를 결정하는 함수
  String getDisplayText(String text, double width) {
    if (width <= 700 && text.trim().length > 10) {
      return text.replaceAll(RegExp('\\s'), "").substring(0, 10); // 화면 너비가 700 이하일 경우 10글자만 반환
    }
    return text; // 그 외의 경우 전체 텍스트 반환
  }

  // 텍스트 너비 구하는 함수
  double TextSize(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text),
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.width;
  }

  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 표시할 텍스트
    String displayText = getDisplayText(widget.tagName, screenWidth);

    // 매개변수로 받은 텍스트의 너비를 가져온다.
    double calculatedTextSize = TextSize(displayText) + 20; // 패딩 추가

    return TextField(
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      cursorColor: fontBlack,
      style: TextStyle(decorationThickness: 0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 5),
        suffixIcon: InkWell(
          onTap: () {
            /// 클릭시 태그 변경 창 띄우기
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CategoryScreenMain()),
            );          },
          child: Container(
            width: calculatedTextSize,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [ BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 1)
                )]
            ),
            child: Center(
              child: Text(
                widget.tagName,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: widget.tagColor,
                ),
              ),
            ),
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          minWidth: calculatedTextSize,
        ),
        hintText: "TODO 작성",
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.tagColor,
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.tagColor,
            width: 2,
          ),
        ),
      ),
    );


  }
}
