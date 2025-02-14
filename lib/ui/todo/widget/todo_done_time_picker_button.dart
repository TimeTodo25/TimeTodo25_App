import 'package:flutter/material.dart';
import '../../../assets/colors/color.dart';

class TodoDoneTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String buttonText;

  const TodoDoneTimePickerButton({
    super.key,
    required this.onTap,
    required this.buttonText
  });

  @override
  State<TodoDoneTimePickerButton> createState() => _TodoStartTimePickerButtonState();
}


class _TodoStartTimePickerButtonState extends State<TodoDoneTimePickerButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "종료시간",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    widget.buttonText,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: widget.buttonText == "시간 선택" ? grey3 : fontBlack,
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
