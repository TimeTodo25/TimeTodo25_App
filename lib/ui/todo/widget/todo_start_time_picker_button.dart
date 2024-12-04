import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class TodoStartTimePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;

  TodoStartTimePickerButton({
    super.key,
    required this.onTap
  });

  @override
  State<TodoStartTimePickerButton> createState() => _TodoStartTimePickerButtonState();
}

class _TodoStartTimePickerButtonState extends State<TodoStartTimePickerButton> {
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
                    // Todo 선택한 시작 시간을 보이게 하기 but 첫 화면 일 때에는 '시작 시간 선택'으로 보여주기
                    "시작 시간 선택",
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
