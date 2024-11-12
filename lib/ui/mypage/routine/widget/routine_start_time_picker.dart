import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';

class RoutineStartTimePicker extends StatefulWidget {
  const RoutineStartTimePicker({super.key});

  @override
  State<RoutineStartTimePicker> createState() => _RoutineStartTimePickerState();
}

class _RoutineStartTimePickerState extends State<RoutineStartTimePicker> {
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
                    "시간",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    // Todo 선택한 시작 시간을 보이게 하기 but 첫 화면 일 때에는 '시간 선택'으로 보여주기
                    "시간 선택",
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
