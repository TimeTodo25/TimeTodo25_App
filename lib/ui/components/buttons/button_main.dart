import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class ButtonMain extends StatefulWidget {
  final double buttonWidth;
  final String titleText;
  final Color boxColor;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final Color? textColor;

  const ButtonMain({
    required this.buttonWidth,
    required this.titleText,
    required this.boxColor,
    this.textColor,
    this.textStyle,
    this.onTap,
    Key? key,
  }): super(key: key);

  @override
  State<ButtonMain> createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ButtonMain> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.boxColor,
        ),
        child: Padding(
          padding:  EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Text(
            '${widget.titleText}',
            textAlign: TextAlign.center,
            style: widget.textStyle?.copyWith(
              color: widget.textColor
            ) ?? Theme.of(context).textTheme.titleMedium?.copyWith(
              color: widget.textColor ?? fontBlack, // 넘겨받은 색상 또는 기본값
            )
          ),
        ),
      ),
    );
  }
}
