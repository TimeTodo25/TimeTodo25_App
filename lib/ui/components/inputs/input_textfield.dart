import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class InputTextField extends StatefulWidget {
  final double buttonWidth;
  final String hintText;

  final bool borderRed;
  final bool obscureText;
  final TextEditingController controller;
  final Function(String)? onChanged;

  const InputTextField({
    super.key,
    required this.buttonWidth,
    required this.hintText,
    required this.controller,
    this.borderRed = false,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(13, 0.5, 0, 0),
      width: widget.buttonWidth,
      height: 55,
      decoration: BoxDecoration(
        border:
            Border.all(color: widget.borderRed ? mainRed : grey1, width: 2.0),
        boxShadow: [
          BoxShadow(color: grey1),
          BoxShadow(color: Colors.white, blurRadius: 3, spreadRadius: -4.0),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            hintText: widget.hintText,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintStyle:
                Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3)),
      ),
    );
  }
}
