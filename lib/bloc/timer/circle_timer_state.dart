import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/utils/timer_log.dart';

sealed class TimerState extends Equatable {
  final int duration;
  final TimerLog? timerLog;
  const TimerState(this.duration, this.timerLog);

  @override
  List<Object?> get props => [duration, timerLog];

}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration, super.timerLog);
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration, super.timerLog);
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration, super.timerLog);
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete(super.duration, super.timerLog);
}

// Circle Timer 초기화
final class TimerIndicatorInit { }

// Circle Timer 60분 완료
final class TimerIndicatorDone { }