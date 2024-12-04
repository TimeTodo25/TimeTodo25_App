import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  final String title;
  final DateTime initialDateTime;
  final ValueChanged<DateTime> onDateTimeChanged;

  const TimePicker({
    super.key,
    required this.title,
    required this.initialDateTime,
    required this.onDateTimeChanged,
  });

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {

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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(CupertinoIcons.back),
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 50),
            ],
          ),
          Container(
            height: 180,
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
                backgroundColor: Colors.white,
                initialDateTime: widget.initialDateTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: widget.onDateTimeChanged
              ),
            ),
          ),
        ],
      ),
    );
  }
}