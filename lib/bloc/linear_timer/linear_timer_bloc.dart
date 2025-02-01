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

  LinearTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(LinearTimerInitial(
          runningDuration: 0, stoppingDuration: 0, segments: [])) {
    on<TimerStart>(_onStarted);
    on<TimerPause>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<LinearTimerReset>(_onReset);
    on<TimerStop>(_onStop);
    on<TimerRunTicked>(_onRunTicked);
    on<TimerStopTicker>(_onStopTicker);
    on<AddTimerHistory>(_onAddTimerHistory);
  }

  // 타이머 취소 메서드 추가
  void cancel() {
    _tickerStream?.cancel();
    _tickerStream = null;
  }

  void _onStarted(TimerStart event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();

    // 목표 시간이 있는 경우, 해당 시간까지 타이머 실행. ticks 가 null이면 무한 타이머
    _tickerStream = _ticker.tick().listen((duration) =>
        add(TimerRunTicked(duration: duration)));

    _linearTimerLog.updateAllLogs(Segment(type: TimerLogType.started,
        timestamp: DateTime.now(),
        spendTime: state.runningDuration));

    emit(LinearTimerRun(
      runningDuration: event.runningDuration ?? 0,
      stoppingDuration: 0,
      segments: _linearTimerLog.logs,
    ));
  }

  void _onPaused(TimerPause event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();

    // 멈춤 상태 유지 시간 체크
    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerStopTicker(duration: duration));
    });

    // 타이머 진행을 유지한 시간 기록
    _linearTimerLog.updateAllLogs(Segment(type: TimerLogType.paused,
        timestamp: DateTime.now(),
        spendTime: state.runningDuration));

    emit(LinearTimerPause(
        runningDuration: state.runningDuration,
        stoppingDuration: 0,
        segments: _linearTimerLog.logs
    ));
  }

  void _onResumed(TimerResumed event, Emitter<LinearTimerState> emit) {
    _tickerStream?.cancel();
    _tickerStream = _ticker.tick().listen((duration) {
      add(TimerRunTicked(duration: duration));
    });

    // 타이머 멈춤을 유지한 시간 기록
    _linearTimerLog.updateAllLogs(Segment(type: TimerLogType.started,
        timestamp: DateTime.now(),
        spendTime: event.stoppingDuration));

    emit(LinearTimerRun(
        runningDuration: event.stoppingDuration,
        stoppingDuration: 0,
        segments: _linearTimerLog.logs)
    );
  }

  void _onReset(LinearTimerReset event, Emitter<LinearTimerState> emit) {
    cancel();
    _linearTimerLog.clearLogs();

    emit(const LinearTimerInitial(
        runningDuration: 0,
        stoppingDuration: 0,
        segments: []
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
      segments: state.segments,
    ));
  }

  // 멈춤 타이머의 tick 처리
  void _onStopTicker(TimerStopTicker event, Emitter<LinearTimerState> emit) {
    emit(LinearTimerPause(
      runningDuration: 0,
      stoppingDuration: event.duration,
      segments: state.segments,
    ));
  }

  // 시작시간, 멈춤시간 둘 다 존재할 때만 저장
  void _onAddTimerHistory(AddTimerHistory event, Emitter<LinearTimerState> emit) async {
    try {
      final List<TimerModel> timerHistories = [];
      Segment? previousLog; // 이전 로그 (started or paused)

      for (final log in state.segments) {
        if (previousLog != null) {
          // 이전 로그가 존재할 경우, 현재 로그와 매칭하여 저장
          timerHistories.add(
            TimerModel(
              idx: null,
              historyStartDt: previousLog.timestamp.toIso8601String(),
              historyEndDt: log.timestamp.toIso8601String(),
              totalTm: log.spendTime?.toString() ?? "0",
              todoIdx: event.todoIdx,
              syncIdx: null,
              syncCategoryIdx: null,
              syncDt: null,
            ),
          );
        }
        // 현재 로그를 이전 로그로 설정 (paused 로그도 포함)
        previousLog = log;
      }

      // DB에 TimerHistories 저장
      if (timerHistories.isNotEmpty) {
        await TimerRepository.insertTimerHistory(timerHistories);
      }
    } catch (e) {
      print("onAddTimerHistory 중 에러 발생: $e");
    }
  }

  Future<void> _onFetchTimerHistory(FetchTimerHistory event, Emitter<LinearTimerState> emit) async {
    try {
      final timerHistories = await TimerRepository.getTimerHistoryByTodoIndex(event.todoIdx);

    } catch (e) {

    }
  }
}