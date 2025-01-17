import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/timer_event.dart';
import 'package:time_todo/bloc/timer/timer_state.dart';
import 'package:time_todo/ui/todo/widget/ticker.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  static const int _duration = 0;

  // Stream을 구독하여 이벤트를 처리
  StreamSubscription<int>? _tickerSubscription;

  // 타이머 초기값 설정
  TimerBloc({required Ticker ticker}): _ticker = ticker,
        super(TimerInitial(_duration)) {
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

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(const TimerRunInProgress(0)); // 0초부터 시작
    _tickerSubscription?.cancel();

    // 목표 시간이 있는 경우, 해당 시간까지 타이머 실행
    _tickerSubscription = _ticker
        .tick(ticks: event.duration) // ticks 가 null이면 무한 타이머
        .listen((duration) => add(TimerTicked(duration: duration)));
  }


  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause(); // 타이머 멈춤
      emit(TimerRunPause(state.duration)); // 현재 시간을 상태로 유지
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state is TimerRunPause) {
      // 멈췄던 상태에서 이어서 시작
      _tickerSubscription?.resume(); // 기존 스트림 이어서 재개
      emit(TimerRunInProgress(state.duration));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const TimerInitial(0)); // 초기 상태로 리셋
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration));
  }
}

