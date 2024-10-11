import 'package:flutter/material.dart';

class ButtonMain extends StatefulWidget {
  final double buttonWidth;
  final String titleText;
  final double textSize;
  final Color textColor;
  final Color boxColor;
  final VoidCallback? onTap;

  const ButtonMain({
    required this.buttonWidth,
    required this.titleText,
    required this.textSize,
    required this.textColor,
    required this.boxColor,
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
        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
        width: widget.buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.boxColor,
        ),
        child: Padding(
          padding:  EdgeInsets.fromLTRB(0, 14, 0, 14),
          child: Text(
            '${widget.titleText}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.textSize,
              color: widget.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
