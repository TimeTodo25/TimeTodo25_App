import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/linear_timer/linear_timer_event.dart';
import 'package:time_todo/bloc/linear_timer/linear_timer_state.dart';
import 'package:time_todo/ui/utils/linear_timer_log.dart';
import '../../ui/todo/widget/ticker.dart';
import '../../ui/utils/timer_log_entry.dart';

class LinearTimerBloc extends Bloc<LinearTimerEvent, LinearTimerState> {
  final Ticker _ticker;

  // 티커 구독
  StreamSubscription<int>? _tickerStream;

  // 타이머 시작, 정지 기록
  final LinearTimerLog _linearTimerLog = LinearTimerLog();

  LinearTimerBloc({required Ticker ticker})
      : _ticker = ticker, super(LinearTimerInitial(runningDuration: 0, stoppingDuration: 0, timerLog: null)) {
    on<TimerStart>(_onStart);
    on<TimerPause>(_onPause);
    on<TimerResumed>(_onResumed);
    on<LinearTimerReset>(_onReset);
    on<TimerRunTicked>(_onRunTicked);
    on<TimerStopTicker>(_onStopTicker);
  }

  @override
  Future<void> close() {
    cancel();
    return super.close();
  }

  // 타이머 취소 메서드 추가
  void cancel() {
    _tickerStream?.cancel();
    _tickerStream = null;
  }

  void _onStart(TimerStart event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel(); // 기존 구독 취소하고 새로 생성
    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerRunTicked(runningDuration: duration));
    });

    // 시작 상태가 발생한 시간을 _timerLog 에 저장
    _linearTimerLog.addLogs(TimerLogEntry(type: TimerLogType.started, timestamp: DateTime.now()));

    final segments = _linearTimerLog.generateBarSegments();

    emit(LinearTimerRun(
      runningDuration: event.runningDuration ?? 0,
      stoppingDuration: state.stoppingDuration,
      timerLog: _linearTimerLog,
      segments: segments,
    ));
  }

  void _onPause(TimerPause event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();
    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerStopTicker(stoppingDuration: duration));
    });

    final segments = _linearTimerLog.generateBarSegments(); // 새로 생성된 막대 데이터

    _linearTimerLog.addLogs(TimerLogEntry(type: TimerLogType.paused, timestamp: DateTime.now()));  // 멈추기 시작한 시간 기록
    _linearTimerLog.updateTotalSpendTimeByMinutes(); // List text 로 나타내기 위한 분 기록
    _linearTimerLog.updateTotalSpendTimeBySeconds(); // 그래프를 그리기 위한 소요시간 계산

    emit(LinearTimerPause(
      runningDuration: 0,
      stoppingDuration: 0,
      timerLog: _linearTimerLog,
      segments: segments
    ));
  }

  void _onResumed(TimerResumed event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();
    final segments = _linearTimerLog.generateBarSegments();

    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerRunTicked(runningDuration: duration));
    });

    // 다시 시작한 시간 기록
    _linearTimerLog.addLogs(TimerLogEntry(type: TimerLogType.started, timestamp: DateTime.now()));
    // 멈춤 후 다시 시작까지 걸린 시간에 대해 기록
    _linearTimerLog.updateTotalSpendTimeBySeconds();

    emit(LinearTimerRun(timerLog: state.timerLog, runningDuration: 0, stoppingDuration: 0, segments: segments));
  }

  void _onReset(LinearTimerReset event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();

    emit(LinearTimerInitial(
      runningDuration: 0,
      stoppingDuration: 0,
      timerLog: null,
    ));
  }


  // 진행중 타이머의 tick 처리
  void _onRunTicked(TimerRunTicked event, Emitter<LinearTimerState> emit) {
    final segments = _linearTimerLog.generateBarSegments();

    emit(LinearTimerRun(
      runningDuration: event.runningDuration,
      stoppingDuration: 0,
      timerLog: state.timerLog,
      segments: segments,
    ));
  }

  // 멈춤 타이머의 tick 처리
  void _onStopTicker(TimerStopTicker event, Emitter<LinearTimerState> emit) {
    final segments = _linearTimerLog.generateBarSegments(); // 새로 생성된 막대 데이터

    emit(LinearTimerPause(
      runningDuration: 0,
      stoppingDuration: event.stoppingDuration,
      timerLog: state.timerLog, segments: segments,
    ));
  }
}