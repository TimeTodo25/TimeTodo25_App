import 'package:equatable/equatable.dart';

sealed class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);

  @override
  List<Object?> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete(super.duration);
}

// Circle Timer 초기화
final class TimerIndicatorInit { }

// Circle Timer 60분 완료
final class TimerIndicatorDone { }