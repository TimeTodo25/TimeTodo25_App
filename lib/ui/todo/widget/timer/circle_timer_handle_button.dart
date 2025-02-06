import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_button.dart';

import '../../../../bloc/circle_timer/circle_timer_bloc.dart';
import '../../../../bloc/circle_timer/circle_timer_event.dart';
import '../../../../bloc/circle_timer/circle_timer_state.dart';


class CircleTimerHandleButton extends StatefulWidget {
  final int todoIdx;
  final Color categoryColor;
  const CircleTimerHandleButton({super.key, required this.categoryColor, required this.todoIdx});

  @override
  State<CircleTimerHandleButton> createState() => _CircleTimerHandleButtonState();
}

class _CircleTimerHandleButtonState extends State<CircleTimerHandleButton> {
  void _onStart(int? duration) {
    context.read<CircleTimerBloc>().add(TimerStarted(todoIdx: widget.todoIdx, duration: duration));
  }

  void _onPause() {
    context.read<CircleTimerBloc>().add(TimerPaused());
  }

  void _onResume() {
    context.read<CircleTimerBloc>().add(TimerResumed());
  }

  void _onReset() {
    context.read<CircleTimerBloc>().add(TimerReset());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CircleTimerBloc, CircleTimerState>(
      builder: (context, state) {
        switch(state) {
          case TimerInitial():
            return TimerButton(onTap: () {
              _onStart(null);
            }, color: widget.categoryColor, title: '타이머 시작');
          case TimerRunInProgress(): {
            return TimerButton(onTap: () {
              _onPause();
            }, color: widget.categoryColor, title: '일시 정지');
          }
          case TimerRunPause():
            return TimerButton(onTap: () {
              _onResume();
            }, color: widget.categoryColor, title: '재개');
          case TimerRunComplete():
            return TimerButton(onTap: () {
              _onReset();
            }, color: widget.categoryColor, title: '리셋');
        }
      },
    );
  }
}