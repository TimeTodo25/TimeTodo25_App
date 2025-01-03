import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoDatePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final DateTime? initialDate;

  TodoDatePickerButton({
    super.key,
    required this.onTap,
    this.initialDate
  });

  @override
  State<TodoDatePickerButton> createState() => _TodoDatePickerButtonState();
}

class _TodoDatePickerButtonState extends State<TodoDatePickerButton> {
  @override
  Widget build(BuildContext context) {
    DateTime displayedDate = widget.initialDate ?? DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(displayedDate);

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
                    "날짜 ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    formattedDate,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
