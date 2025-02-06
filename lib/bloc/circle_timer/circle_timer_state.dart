import 'package:equatable/equatable.dart';
import '../../entity/timer/timer_tbl.dart';

sealed class CircleTimerState extends Equatable {
  final int duration;
  final List<TimerModel> timerModels; // 막대 그래프 데이터
  const CircleTimerState(this.duration, this.timerModels);

  @override
  List<Object?> get props => [duration, timerModels];
}

final class TimerInitial extends CircleTimerState {
  const TimerInitial(super.duration, super.timerModels);
}

final class TimerRunPause extends CircleTimerState {
  const TimerRunPause(super.duration, super.timerModels);
}

final class TimerRunInProgress extends CircleTimerState {
  const TimerRunInProgress(super.duration, super.timerModels);
}

final class TimerRunComplete extends CircleTimerState {
  const TimerRunComplete(super.duration, super.timerModels);
}