import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/circle_timer/circle_timer_event.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_button.dart';
import 'package:time_todo/bloc/timer/circle_timer/circle_timer_bloc.dart';
import 'package:time_todo/bloc/timer/circle_timer/circle_timer_state.dart';


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
    context.read<CircleTimerBloc>().add(TimerPaused(todoIdx: widget.todoIdx));
  }

  void _onResume() {
    context.read<CircleTimerBloc>().add(const TimerResumed());
  }

  void _onReset() {
    context.read<CircleTimerBloc>().add(const TimerReset());
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CircleTimerBloc, CircleTimerState>(
      builder: (context, state) {
        switch(state) {
          case CircleTimerInitial():
            return TimerButton(onTap: () {
              _onStart(null);
            }, color: widget.categoryColor.withAlpha(150), title: '타이머 시작');
          case CircleTimerRun(): {
            return TimerButton(onTap: () {
              _onPause();
            }, color: widget.categoryColor, title: '일시 정지');
          }
          case CircleTimerPause():
            return TimerButton(onTap: () {
              _onResume();
            }, color: widget.categoryColor.withAlpha(150), title: '재개');
          case CircleTimerStop():
            return TimerButton(onTap: () {
              _onReset();
            }, color: widget.categoryColor, title: '리셋');
        }
      },
    );
  }
}