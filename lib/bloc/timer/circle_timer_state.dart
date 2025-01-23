import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/utils/timer_log.dart';

sealed class CircleTimerState extends Equatable {
  final int duration;
  final TimerLog? timerLog;
  const CircleTimerState(this.duration, this.timerLog);

  @override
  List<Object?> get props => [duration, timerLog];
}

final class TimerInitial extends CircleTimerState {
  const TimerInitial(super.duration, super.timerLog);
}

final class TimerRunPause extends CircleTimerState {
  const TimerRunPause(super.duration, super.timerLog);
}

final class TimerRunInProgress extends CircleTimerState {
  const TimerRunInProgress(super.duration, super.timerLog);
}

final class TimerRunComplete extends CircleTimerState {
  const TimerRunComplete(super.duration, super.timerLog);
}

// Circle Timer 초기화
final class TimerIndicatorInit { }

// Circle Timer 60분 완료
final class TimerIndicatorDone { }