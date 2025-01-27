import 'package:equatable/equatable.dart';

import '../../ui/todo/widget/timer_log/timer_log_entry.dart';

sealed class LinearTimerState extends Equatable {
  final int runningDuration;
  final int stoppingDuration;
  final List<TimerLogEntry> segments; // 막대 그래프 데이터

  const LinearTimerState({
    required this.runningDuration,
    required this.stoppingDuration,
    required this.segments,
  });

  @override
  List<Object?> get props => [runningDuration, stoppingDuration, segments];
}

// 초기 상태
final class LinearTimerInitial extends LinearTimerState {
  const LinearTimerInitial({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.segments
  });
}

// 진행중
final class LinearTimerRun extends LinearTimerState {
  const LinearTimerRun({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.segments,
  });
}

// 멈춤
final class LinearTimerPause extends LinearTimerState {
  const LinearTimerPause({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.segments,
  });
}

// 종료
final class LinearTimerStop extends LinearTimerState {
  const LinearTimerStop({
    super.runningDuration = 0,
    super.stoppingDuration = 0,
    super.segments = const [],
  });
}