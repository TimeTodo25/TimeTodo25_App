import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/timer_bloc.dart';

class TimerText extends StatelessWidget {
  const TimerText({super.key});
  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);

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