import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/utils/timer_log_entry.dart';
import '../../ui/utils/linear_timer_log.dart';

sealed class LinearTimerState extends Equatable {
  final int runningDuration;
  final int stoppingDuration;
  final LinearTimerLog? timerLog;
  final List<TimerLogEntry> segments; // 막대 그래프 데이터

  LinearTimerState({
    required this.runningDuration,
    required this.stoppingDuration,
    required this.timerLog,
    required this.segments,
  });

  @override
  List<Object?> get props => [runningDuration, stoppingDuration, timerLog, segments];
}

// 초기 상태
final class LinearTimerInitial extends LinearTimerState {
  LinearTimerInitial({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerLog,
    required super.segments
  });
}

// 진행중
final class LinearTimerRun extends LinearTimerState {
  LinearTimerRun({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerLog,
    required super.segments,
  });
}

// 멈춤
final class LinearTimerPause extends LinearTimerState {
  LinearTimerPause({
    required super.runningDuration,
    required super.stoppingDuration,
    required super.timerLog,
    required super.segments,
  });
}

// 종료
final class LinearTimerStop extends LinearTimerState {
  LinearTimerStop({
    super.runningDuration = 0,
    super.stoppingDuration = 0,
    super.timerLog,
    super.segments = const [],
  });
}