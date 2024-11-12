import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';

class RoutineDoneDatePicker extends StatefulWidget {
  const RoutineDoneDatePicker({super.key});

  @override
  State<RoutineDoneDatePicker> createState() => _RoutineDoneDatePickerState();
}

class _RoutineDoneDatePickerState extends State<RoutineDoneDatePicker> {
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
                      "종료일",
                      style: Theme.of(context).textTheme.labelSmall
                  ),
                  Text(
                    // Todo 선택한 종료일을 보이게 하기 but 첫 화면 일 때에는 '종료일 선택'으로 보여주기
                    "종료일 선택",
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
