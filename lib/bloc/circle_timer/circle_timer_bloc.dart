import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/ui/todo/widget/ticker.dart';
import 'package:time_todo/ui/utils/timer_log.dart';
import '../../ui/utils/timer_log_entry.dart';
import 'circle_timer_event.dart';
import 'circle_timer_state.dart';

class CircleTimerBloc extends Bloc<CircleTimerEvent, CircleTimerState> {
  final Ticker _ticker;
  static const int _duration = 0;

  // Stream을 구독하여 이벤트를 처리
  StreamSubscription<int>? _tickerSubscription;

  // 타이머 시작, 정지 기록
  final TimerLog _timerLog = TimerLog();

  // 타이머 초기값 설정
  CircleTimerBloc({required Ticker ticker})
      : _ticker = ticker,  super(TimerInitial(_duration, null)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<TimerTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<CircleTimerState> emit) {
    _tickerSubscription?.cancel();
    emit(TimerRunInProgress(0, state.timerLog)); // 0초부터 시작

    // 목표 시간이 있는 경우, 해당 시간까지 타이머 실행. ticks 가 null이면 무한 타이머
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(TimerTicked(duration: duration))
    );

    // 시작 버튼을 누른 시간 기록
    _timerLog.updateStartLog(TimerLogEntry(type: TimerLogType.started, timestamp: DateTime.now()));
  }

  void _onPaused(TimerPaused event, Emitter<CircleTimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause(); // 타이머 멈춤

      // 멈춤 버튼을 누른 시간 기록
      _timerLog.updateEndLog(TimerLogEntry(type: TimerLogType.paused, timestamp: DateTime.now()));
      emit(TimerRunPause(state.duration, state.timerLog)); // 현재 시간을 상태로 유지
    }
  }

  void _onResumed(TimerResumed resume, Emitter<CircleTimerState> emit) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume(); // 기존 스트림 이어서 재개
      _timerLog.updateStartLog(TimerLogEntry(type: TimerLogType.started, timestamp: DateTime.now()));
      emit(TimerRunInProgress(state.duration, state.timerLog));
    }
  }

  void _onReset(TimerReset event, Emitter<CircleTimerState> emit) {
    _tickerSubscription?.cancel();
    _timerLog.clearLogs();
    emit(TimerInitial(0, _timerLog)); // 초기 상태로 리셋
  }

  void _onTicked(TimerTicked event, Emitter<CircleTimerState> emit) {
    emit(TimerRunInProgress(event.duration, state.timerLog));
  }
}