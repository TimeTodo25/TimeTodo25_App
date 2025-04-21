import 'package:equatable/equatable.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';

enum TimerHistoryStatus { initial, success, error, update, delete, added }

class TimerHistoryState extends Equatable {
  final int duration;
  final List<TimerModel> timerModels;
  final TimerHistoryStatus status;

  const TimerHistoryState({
    required this.duration,
    required this.timerModels,
    required this.status,
  });

  factory TimerHistoryState.initial() {
    return const TimerHistoryState(
      duration: 0,
      timerModels: [],
      status: TimerHistoryStatus.initial,
    );
  }

  TimerHistoryState copyWith({
    int? duration,
    List<TimerModel>? timerModels,
    TimerHistoryStatus? status,
  }) {
    return TimerHistoryState(
      duration: duration ?? this.duration,
      timerModels: timerModels ?? this.timerModels,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [duration, timerModels, status];
}