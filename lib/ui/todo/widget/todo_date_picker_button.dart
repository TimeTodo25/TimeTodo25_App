import 'package:flutter/material.dart';

class TodoDatePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String? buttonText;

  const TodoDatePickerButton({
    super.key,
    required this.onTap,
    this.buttonText
  });

  @override
  State<TodoDatePickerButton> createState() => _TodoDatePickerButtonState();
}

class _TodoDatePickerButtonState extends State<TodoDatePickerButton> {
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
                    "날짜 ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                      widget.buttonText ?? "날짜를 선택해주세요",
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
