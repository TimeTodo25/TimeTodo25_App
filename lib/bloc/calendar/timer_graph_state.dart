import 'package:equatable/equatable.dart';

import '../../entity/timer/timer_tbl.dart';

enum TimerGraphStatus { initial, success, error }

class TimerGraphState extends Equatable {
  final List<TimerModel> timerModels; // 막대 그래프 데이터
  final TimerGraphStatus status;

  const TimerGraphState({required this.timerModels, required this.status});

  @override
  List<Object?> get props => [timerModels, status];
}