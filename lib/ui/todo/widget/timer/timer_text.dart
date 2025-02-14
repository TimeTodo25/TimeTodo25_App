import 'package:flutter/material.dart';

class TimerText extends StatelessWidget {
  final int duration;

  const TimerText({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    // 시간, 분, 초 계산
    final hoursStr = (duration ~/ 3600).toString().padLeft(2, '0'); // 시간
    final minutesStr = ((duration % 3600) ~/ 60).toString().padLeft(2, '0'); // 분
    final secondsStr = (duration % 60).toString().padLeft(2, '0'); // 초

    return Text(
      '$hoursStr : $minutesStr : $secondsStr',
      style: Theme.of(context).textTheme.titleLarge
    );
  }
}