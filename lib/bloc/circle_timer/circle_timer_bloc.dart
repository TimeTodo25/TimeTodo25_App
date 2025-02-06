import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../entity/timer/timer_tbl.dart';
import '../../ui/todo/widget/timer/ticker.dart';
import '../../ui/todo/widget/timer_log/timer_log_segment.dart';
import 'circle_timer_event.dart';
import 'circle_timer_state.dart';

class CircleTimerBloc extends Bloc<CircleTimerEvent, CircleTimerState> {
  /// CircleTimer 는 멈춤 상태를 기록하지 않음
  final Ticker _ticker;
  static const int _duration = 0;
  StreamSubscription<int>? _tickerStream; // Stream을 구독하여 이벤트를 처리
  TimerModel? currentTimerModel;
  TimerModel? lastTimerModel;

  // 타이머 초기값 설정
  CircleTimerBloc({required Ticker ticker})
      : _ticker = ticker,  super(const TimerInitial(_duration, [])) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<TimerTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _tickerStream?.cancel();
    return super.close();
  }

  // 타이머 취소
  void cancel() {
    _tickerStream?.cancel();
    _tickerStream = null;
  }

  void _startTicker(void Function(int) onTick) {
    cancel();
    _tickerStream = _ticker.tick().listen(onTick);
  }

  TimerModel _createTimerModel(String? totalTm, int? todoIdx) {
    final currentTimerLog = state.timerModels;
    int defaultIdx = 1;

    int newIdx = (currentTimerLog.isEmpty)
        ? defaultIdx
        : currentTimerLog.last.idx! + 1;

    return TimerModel(
      idx: newIdx,
      historyType: TimerLogType.started,
      historyStartDt: DateTime.now().toIso8601String(),
      historyEndDt: '', // 아직 멈추지 않았으므로 빈 값
      totalTm: totalTm ?? '',
      todoIdx: todoIdx ?? 0,
    );
  }

  String getTotalTm() {
    final startTime = DateTime.parse(lastTimerModel!.historyStartDt);
    final endTime = DateTime.now();
    final totalTm = endTime.difference(startTime).inSeconds;
    return totalTm.toString();
  }

  void _onStarted(TimerStarted event, Emitter<CircleTimerState> emit) {
    _startTicker((duration) => add(TimerTicked(duration: duration)));
    currentTimerModel = _createTimerModel(null, event.todoIdx); // 시작 버튼을 누른 시간 기록
    emit(const TimerRunInProgress(_duration, [])); // 0초부터 시작
  }

  void _onPaused(TimerPaused event, Emitter<CircleTimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerStream?.pause(); // 타이머 멈춤

      if(currentTimerModel == null) return;
      lastTimerModel = currentTimerModel;

      // 현재 시간으로 EndDt 업데이트
      currentTimerModel = currentTimerModel!.copyWith(
        historyStartDt: lastTimerModel!.historyStartDt,
        historyEndDt: DateTime.now().toIso8601String(),
        totalTm: getTotalTm(),
      );

      final updatedTimerModels = List<TimerModel>.from(state.timerModels)..add(currentTimerModel!);
      emit(TimerRunPause(state.duration, updatedTimerModels));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<CircleTimerState> emit) {
    if (state is TimerRunPause) {
      _tickerStream?.resume(); // 기존 스트림 이어서 재개

      final int todoIdx = state.timerModels.last.todoIdx;
      currentTimerModel = _createTimerModel(null, todoIdx); // 시작 버튼을 누른 시간 기록

      emit(TimerRunInProgress(state.duration, state.timerModels));
    }
  }

  void _onReset(TimerReset event, Emitter<CircleTimerState> emit) {
    cancel();
    emit(const TimerInitial(_duration, [])); // 초기 상태로 리셋
  }

  void _onTicked(TimerTicked event, Emitter<CircleTimerState> emit) {
    emit(TimerRunInProgress(event.duration, state.timerModels));
  }
}