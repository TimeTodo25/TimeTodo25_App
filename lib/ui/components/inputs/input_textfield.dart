import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class InputTextField extends StatefulWidget {

  final double buttonWidth;
  final String hintText;

  const InputTextField({
    required this.buttonWidth,
    required this.hintText,
    Key? key
  }): super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15,2.5,0,0),
      width: widget.buttonWidth,
      height: 55,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: grey1),
            BoxShadow(color: Colors.white,blurRadius: 3,spreadRadius: -4.0),
          ],
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: widget.hintText,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: grey3
            )
        ),
      ),
    );
  }
}
