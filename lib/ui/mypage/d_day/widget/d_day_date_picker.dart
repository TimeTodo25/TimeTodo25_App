import 'package:flutter/material.dart';

class DDayDatePicker extends StatefulWidget {
  const DDayDatePicker({super.key});

  @override
  State<DDayDatePicker> createState() => _DDayDatePickerState();
}

class _DDayDatePickerState extends State<DDayDatePicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                  "지정일",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
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
