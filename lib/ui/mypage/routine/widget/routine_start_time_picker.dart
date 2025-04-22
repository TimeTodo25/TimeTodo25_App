import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';

class RoutineStartTimePicker extends StatefulWidget {
  final GestureTapCallback? onTap;
  final String? buttonText;
  const RoutineStartTimePicker(
      {super.key, required this.onTap, this.buttonText});

  @override
  State<RoutineStartTimePicker> createState() => _RoutineStartTimePickerState();
}

class _RoutineStartTimePickerState extends State<RoutineStartTimePicker> {
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
                    "시간",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    widget.buttonText ?? "시간을 선택하세요.",
                    style: widget.buttonText == '시간을 선택하세요.'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: grey3)
                        : Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
