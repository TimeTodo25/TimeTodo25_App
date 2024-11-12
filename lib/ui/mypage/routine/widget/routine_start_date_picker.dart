import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';

class RoutineStartDatePicker extends StatefulWidget {
  const RoutineStartDatePicker({super.key});

  @override
  State<RoutineStartDatePicker> createState() => _RoutineStartDatePickerState();
}

class _RoutineStartDatePickerState extends State<RoutineStartDatePicker> {
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
                    "시작일",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    // Todo 선택한 시작일을 보이게 하기 but 첫 화면 일 때에는 '시작일 선택'으로 보여주기
                    "시작일 선택",
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
