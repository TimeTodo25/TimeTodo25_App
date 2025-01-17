import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import '../../../bloc/timer/timer_bloc.dart';
import '../../../bloc/timer/timer_event.dart';
import '../../../bloc/timer/timer_state.dart';

class TimerHandleButton extends StatefulWidget {
  const TimerHandleButton({super.key});

  @override
  State<TimerHandleButton> createState() => _TimerHandleButtonState();
}

class _TimerHandleButtonState extends State<TimerHandleButton> {
  void _onStart(int? duration) {
    // duration = 타이머 목표 시간. null 이면 무한 타이머 실행
    context.read<TimerBloc>().add(TimerStarted(duration: duration));
  }

  void _onPause() {
    context.read<TimerBloc>().add(TimerPaused());
  }

  void _onResume() {
    context.read<TimerBloc>().add(TimerResumed());
  }

  void _onReset() {
    context.read<TimerBloc>().add(TimerReset());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        switch(state) {
          case TimerInitial():
            return TimerButton(onTap: () {
              _onStart(10);
            }, color: mainBlue, title: '타이머 시작');
          case TimerRunInProgress(): {
            return TimerButton(onTap: () {
              _onPause();
            }, color: mainBlue, title: '일시 정지');
          }
          case TimerRunPause():
            return TimerButton(onTap: () {
              _onResume();
            }, color: mainBlue, title: '재개');
          case TimerRunComplete():
            return TimerButton(onTap: () {
              _onReset();
            }, color: mainBlue, title: '리셋');
        }
      },
    );
  }
}