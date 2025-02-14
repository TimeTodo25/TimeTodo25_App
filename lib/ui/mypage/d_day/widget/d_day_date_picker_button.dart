import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class DdayDatePickerButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String? buttonText;

  const DdayDatePickerButton({super.key, required this.onTap, this.buttonText});

  @override
  State<DdayDatePickerButton> createState() => _DdayDatePickerButtonState();
}

class _DdayDatePickerButtonState extends State<DdayDatePickerButton> {
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
                    "지정일 ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    widget.buttonText ?? "날짜를 선택해주세요",
                    style: widget.buttonText == '날짜를 선택해주세요'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: grey3)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
