import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';

class TodoDoneTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final DateTime? initialDateTime;

  const TodoDoneTimePickerButton(
      {super.key, required this.onTap, this.initialDateTime});

  @override
  State<TodoDoneTimePickerButton> createState() =>
      _TodoDoneTimePickerButtonState();
}

class _TodoDoneTimePickerButtonState extends State<TodoDoneTimePickerButton> {
  @override
  Widget build(BuildContext context) {
    final formattedTime = widget.initialDateTime != null
        ? DateFormat('hh:mm a').format(widget.initialDateTime!)
        : "종료 시간 선택";

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
                  Text("종료시간", style: Theme.of(context).textTheme.labelSmall),
                  Text(
                    formattedTime,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: grey3),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
