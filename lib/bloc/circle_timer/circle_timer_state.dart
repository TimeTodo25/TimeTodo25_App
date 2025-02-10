import 'package:equatable/equatable.dart';
import '../../entity/timer/timer_tbl.dart';

enum CircleTimerStatus { initial, doing, success, error, update, delete }

sealed class CircleTimerState extends Equatable {
  final int duration;
  final List<TimerModel> timerModels; // 막대 그래프 데이터
  final CircleTimerStatus status;

  const CircleTimerState(this.duration, this.timerModels, this.status);

  @override
  List<Object?> get props => [duration, timerModels, status];
}

final class CircleTimerInitial extends CircleTimerState {
  CircleTimerInitial(super.duration, super.timerModels, super.status);
}

final class CircleTimerPause extends CircleTimerState {
  const CircleTimerPause(super.duration, super.timerModels, super.status);
}

final class CircleTimerRun extends CircleTimerState {
  const CircleTimerRun(super.duration, super.timerModels, super.status);
}

final class CircleTimerStop extends CircleTimerState {
  CircleTimerStop({int duration = 0})
      : super(duration, const [], CircleTimerStatus.initial);
}
