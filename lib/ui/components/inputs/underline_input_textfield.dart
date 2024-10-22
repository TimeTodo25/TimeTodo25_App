import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class UnderlineInputTextField extends StatefulWidget {
  final Color borderColor;
  final Color focusColor;
  final String hintText;

  const UnderlineInputTextField({
    super.key,
    required this.borderColor,
    required this.focusColor,
    required this.hintText,
  });

  @override
  State<UnderlineInputTextField> createState() =>
      _UnderlineInputTextFieldState();
}

class _UnderlineInputTextFieldState extends State<UnderlineInputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // border 설정
      decoration: InputDecoration(
          // 포커스 되지 않았을 때
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor, width: 2)),
          hintText: widget.hintText,
          hintStyle:
              Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: widget.focusColor, width: 2)
          )),
      cursorColor: widget.borderColor,
    );
  }
}
