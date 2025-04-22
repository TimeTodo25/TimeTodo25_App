import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';

class RoutineDoneDatePicker extends StatefulWidget {
  final GestureTapCallback onTap;
  final String? buttonText;
  const RoutineDoneDatePicker(
      {super.key, required this.onTap, this.buttonText});

  @override
  State<RoutineDoneDatePicker> createState() => _RoutineDoneDatePickerState();
}

class _RoutineDoneDatePickerState extends State<RoutineDoneDatePicker> {
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
                  Text("종료일", style: Theme.of(context).textTheme.labelSmall),
                  Text(
                    widget.buttonText ?? "날짜를 선택하세요.",
                    style: widget.buttonText == '날짜를 선택하세요.'
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
