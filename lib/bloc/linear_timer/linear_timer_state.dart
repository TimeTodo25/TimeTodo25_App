import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';

enum LinearTimerStatus { initial, success, failure }

sealed class LinearTimerState extends Equatable {
  final int runningDuration;
  final int stoppingDuration;
  final List<TimerModel> timerModels; // 막대 그래프 데이터

  const LinearTimerState({
    required this.runningDuration,
    required this.stoppingDuration,
    required this.timerModels,
  });

  @override
  List<Object?> get props => [runningDuration, stoppingDuration, timerModels];
}

// 초기 상태
final class LinearTimerInitial extends LinearTimerState {
  const LinearTimerInitial({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerModels
  });
}

// 진행중
final class LinearTimerRun extends LinearTimerState {
  const LinearTimerRun({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerModels,
  });
}

// 멈춤
final class LinearTimerPause extends LinearTimerState {
  const LinearTimerPause({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerModels,
  });
}

// 종료
final class LinearTimerStop extends LinearTimerState {
  const LinearTimerStop({
    super.runningDuration = 0,
    super.stoppingDuration = 0,
    super.timerModels = const [],
  });
}