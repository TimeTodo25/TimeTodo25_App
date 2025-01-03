import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final DateTime initialDate;
  final ValueChanged<DateTime> onDateChanged;

  DatePicker({
    required this.title,
    required this.initialDate,
    required this.onDateChanged,
    required this.onPressed,
    super.key,
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // 바텀 시트 높이 조절
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: widget.onPressed,
                icon: Icon(CupertinoIcons.back),
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 50),
            ],
          ),
          Container(
            height: 200,
            child: CupertinoTheme(
              data: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  dateTimePickerTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              child: CupertinoDatePicker(
                  initialDateTime: widget.initialDate,
                  maximumYear: 2300,
                  minimumYear: 2000,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: widget.onDateChanged),
            ),
          ),
        ],
      ),
    );
  }
}
