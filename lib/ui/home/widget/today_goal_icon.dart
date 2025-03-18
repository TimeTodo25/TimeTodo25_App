import 'package:flutter/material.dart';

class TodayGoalIcon extends StatefulWidget {
  final String iconPath;
  const TodayGoalIcon({super.key, required this.iconPath});

  @override
  State<TodayGoalIcon> createState() => _TodayGoalIconState();
}

class _TodayGoalIconState extends State<TodayGoalIcon> {
  @override
  Widget build(BuildContext context) {
      return SizedBox(
        width: 70,
        height: 70,
        child: Image.asset(widget.iconPath),
      );
    }
}
