import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class DDayTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  const DDayTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
  });

  @override
  State<DDayTextField> createState() => _DDayTextFieldState();
}

class _DDayTextFieldState extends State<DDayTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      // TextInputAction.search - 돋보기
      // TextInputAction.next - 다음
      // TextInputAction.done - 확인
      textInputAction: TextInputAction.done,
      cursorColor: fontBlack,
      style: TextStyle(decorationThickness: 0),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3),
        // textField unFocus 상태일 때 Underline 스타일 코드
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: fontBlack, width: 2)),
        // textField Focus 상태일 때 Underline 스타일 코드
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: fontBlack, width: 2)),
      ),
    );
  }
}
