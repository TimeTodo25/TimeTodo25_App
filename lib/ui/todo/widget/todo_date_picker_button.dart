import 'package:flutter/material.dart';

class TodoDatePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;

  TodoDatePickerButton({
    super.key,
    required this.onTap
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
                    // Todo 홈에서 설정된 날짜가 보이게 하기
                    "2024 / 10 / 22",
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
