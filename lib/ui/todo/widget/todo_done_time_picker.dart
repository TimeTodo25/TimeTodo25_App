import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class TodoDoneTimePicker extends StatefulWidget {
  const TodoDoneTimePicker({super.key});

  @override
  State<TodoDoneTimePicker> createState() => _TodoDoneTimePickerState();
}

class _TodoDoneTimePickerState extends State<TodoDoneTimePicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {

        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "종료시간",
                    style: Theme.of(context).textTheme.labelSmall
                  ),
                  Text(
                    // Todo 선택한 종료 시간을 보이게 하기 but 첫 화면 일 때에는 '종료 시간 선택'으로 보여주기
                    "종료 시간 선택",
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
