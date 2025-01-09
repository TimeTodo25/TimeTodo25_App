import 'package:flutter/material.dart';
import '../../../assets/colors/color.dart';

class TodoDoneTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String? buttonText;

  const TodoDoneTimePickerButton({
    super.key,
    required this.onTap,
    this.buttonText
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
                    widget.buttonText ?? "시간을 선택해주세요",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: grey3
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
