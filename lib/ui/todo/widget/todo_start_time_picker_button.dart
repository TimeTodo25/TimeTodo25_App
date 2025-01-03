import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../assets/colors/color.dart';

class TodoStartTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final DateTime? initialDateTime;

  const TodoStartTimePickerButton({
    super.key,
    required this.onTap,
    this.initialDateTime
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
    final formattedTime = widget.initialDateTime != null
        ? DateFormat('hh:mm a').format(widget.initialDateTime!)
        : "시작 시간 선택";

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
                    formattedTime,
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
