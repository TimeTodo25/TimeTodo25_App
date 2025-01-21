import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import '../../../bloc/linear_timer/linear_timer_bloc.dart';
import '../../../bloc/linear_timer/linear_timer_event.dart';
import '../../../bloc/linear_timer/linear_timer_state.dart';

class LinearTimerButton extends StatefulWidget {
  final Color categoryColor;
  const LinearTimerButton({super.key, required this.categoryColor});

  @override
  State<LinearTimerButton> createState() => _LinearTimerButtonState();
}

class _LinearTimerButtonState extends State<LinearTimerButton> {
  void _onStart(int? duration) {
    // duration = 타이머 목표 시간. null 이면 무한 타이머 실행
    context.read<LinearTimerBloc>().add(TimerStart(runningDuration: duration));
  }

  void _onPause(int duration) {
    context.read<LinearTimerBloc>().add(TimerPause(stoppingDuration: duration));
  }

  void _onResume(int duration) {
    context.read<LinearTimerBloc>().add(TimerResumed());
  }

  void _onReset() {
    context.read<LinearTimerBloc>().add(LinearTimerReset());
  }

  @override
  void dispose() {
    _onReset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LinearTimerBloc, LinearTimerState>(
      builder: (context, state) {
        switch(state) {
          case LinearTimerInitial():
            return TimerButton(onTap: () {
              _onStart(0);  // 무한 타이머 시작
            }, color: widget.categoryColor, title: '타이머 시작');
          case LinearTimerRun():
            return TimerButton(onTap: () {
              _onPause(state.runningDuration);
            }, color: widget.categoryColor, title: '일시 정지');
          case LinearTimerPause():
            return TimerButton(onTap: () {
              _onResume(0);
            }, color: widget.categoryColor, title: '재개');
          case LinearTimerComplete():
            return TimerButton(onTap: () {
              _onReset();
            }, color: widget.categoryColor, title: '완료');
        }
      },
    );
  }
}