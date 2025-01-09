import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../assets/colors/color.dart';

class TodoStartTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String? buttonText;

  const TodoStartTimePickerButton({
    super.key,
    required this.onTap,
    this.buttonText
  });

  @override
  State<TodoStartTimePickerButton> createState() => _TodoStartTimePickerButtonState();
}


class _TodoStartTimePickerButtonState extends State<TodoStartTimePickerButton> {
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
                    "시작시간",
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
