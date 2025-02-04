import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/linear_timer/linear_timer_event.dart';
import 'package:time_todo/bloc/linear_timer/linear_timer_state.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';
import 'package:time_todo/repository/timer_repository.dart';
import 'package:time_todo/ui/todo/widget/timer_log/linear_timer_log.dart';
import '../../ui/todo/widget/timer/ticker.dart';
import '../../ui/todo/widget/timer_log/timer_log_segment.dart';

class LinearTimerBloc extends Bloc<LinearTimerEvent, LinearTimerState> {
  final Ticker _ticker;

  // 티커 구독
  StreamSubscription<int>? _tickerStream;

  // 타이머 시작, 정지 기록
  final LinearTimerLog _linearTimerLog = LinearTimerLog();

  // 타이머 상태 모델
  TimerModel? currentTimerModel; // 현재
  TimerModel? lastTimerModel; // 이전

  LinearTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(LinearTimerInitial(
          runningDuration: 0, stoppingDuration: 0, timerModels: [])) {
    on<TimerStart>(_onStarted);
    on<TimerPause>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<LinearTimerReset>(_onReset);
    on<TimerStop>(_onStop);
    on<TimerRunTicked>(_onRunTicked);
    on<TimerStopTicker>(_onStopTicker);
    on<AddTimerHistory>(_onAddTimerHistory);
    on<FetchTimerHistory>(_onFetchTimerHistory);
  }

  // 타이머 취소 메서드 추가
  void cancel() {
    _tickerStream?.cancel();
    _tickerStream = null;
  }

  void _onStarted(TimerStart event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();

    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerRunTicked(duration: duration));
    });

    // 새로운 타이머 모델 시작
    currentTimerModel = TimerModel(
      historyType: TimerLogType.started,
      historyStartDt: DateTime.now().toIso8601String(),
      historyEndDt: "", // 아직 멈추지 않았으므로 빈 값
      totalTm: event.runningDuration.toString(),
      todoIdx: 0,
    );

    emit(LinearTimerRun(
      runningDuration: event.runningDuration ?? 0,
      stoppingDuration: 0,
      timerModels: _linearTimerLog.logs,
    ));
  }

  void _onPaused(TimerPause event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();

    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerStopTicker(duration: duration));
    });

    if (currentTimerModel != null) {
      lastTimerModel = currentTimerModel;

      // 현재 시간으로 EndDt 업데이트
      currentTimerModel = currentTimerModel!.copyWith(
        historyStartDt: lastTimerModel!.historyStartDt,
        historyEndDt: DateTime.now().toIso8601String(),
        totalTm: event.runningDuration.toString(),
      );

      _linearTimerLog.updateAllLogs(currentTimerModel!);
    }

    emit(LinearTimerPause(
      runningDuration: state.runningDuration,
      stoppingDuration: 0,
      timerModels: _linearTimerLog.logs,
    ));
  }

  void _onResumed(TimerResumed event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();
    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerRunTicked(duration: duration));
    });

    // 새로운 Started 모델 생성
    currentTimerModel = TimerModel(
      historyType: TimerLogType.paused, // 일시정지한 시간 기록
      historyStartDt: DateTime.now().toIso8601String(),
      historyEndDt: "", // 다시 시작할 때 EndDt는 초기화
      totalTm: event.stoppingDuration.toString(),
      todoIdx: 0,
    );

    emit(LinearTimerRun(
      runningDuration: event.stoppingDuration,
      stoppingDuration: 0,
      timerModels: _linearTimerLog.logs,
    ));
  }

  void _onReset(LinearTimerReset event, Emitter<LinearTimerState> emit) {
    cancel();
    _linearTimerLog.clearLogs();
    currentTimerModel = null;
    lastTimerModel = null;

    emit(const LinearTimerInitial(
        runningDuration: 0,
        stoppingDuration: 0,
        timerModels: []
    ));
  }

  void _onStop(TimerStop event, Emitter<LinearTimerState> emit) {
    cancel();
    emit(LinearTimerStop(runningDuration: 0));
  }

  // 진행중 타이머의 tick 처리
  void _onRunTicked(TimerRunTicked event, Emitter<LinearTimerState> emit) {
    emit(LinearTimerRun(
      runningDuration: event.duration,
      stoppingDuration: 0,
      timerModels: state.timerModels,
    ));
  }

  // 멈춤 타이머의 tick 처리
  void _onStopTicker(TimerStopTicker event, Emitter<LinearTimerState> emit) {
    emit(LinearTimerPause(
      runningDuration: 0,
      stoppingDuration: event.duration,
      timerModels: state.timerModels,
    ));
  }

  void _onAddTimerHistory(AddTimerHistory event,
      Emitter<LinearTimerState> emit) async {
    try {
      final List<TimerModel> timerHistories = [];

      for (final log in state.timerModels) {
        timerHistories.add(
          TimerModel(
            idx: null,
            historyStartDt: log.historyStartDt,
            historyEndDt: log.historyEndDt,
            historyType: log.historyType,
            totalTm: log.totalTm,
            todoIdx: event.todoIdx,
            syncIdx: null,
            syncCategoryIdx: null,
            syncDt: null,
          ),
        );
      }

      if (timerHistories.isNotEmpty) {
        await TimerRepository.insertTimerHistory(timerHistories);
      }
    } catch (e) {
      print("onAddTimerHistory 중 에러 발생: $e");
    }
  }

  Future<void> _onFetchTimerHistory(FetchTimerHistory event,
      Emitter<LinearTimerState> emit) async {
    try {
      final timerHistories = await TimerRepository.getTimerHistoryByTodoIndex(event.todoIdx) ?? [];

      if (timerHistories.isEmpty) return;

      emit(LinearTimerRun(
        runningDuration: state.runningDuration,
        stoppingDuration: state.stoppingDuration,
        timerModels: timerHistories,
      ));
    } catch (e) {
      print("타이머 기록 불러오기 중 에러 발생: $e");
    }
  }
}