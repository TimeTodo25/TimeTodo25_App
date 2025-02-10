import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../entity/timer/timer_tbl.dart';
import '../../repository/timer_repository.dart';
import '../../ui/todo/widget/timer/ticker.dart';
import 'circle_timer_event.dart';
import 'circle_timer_state.dart';

class CircleTimerBloc extends Bloc<CircleTimerEvent, CircleTimerState> {
  /// CircleTimer 는 멈춤 상태를 기록하지 않음
  final Ticker _ticker;
  static const int _duration = 0;
  StreamSubscription<int>? _tickerStream; // Stream을 구독하여 이벤트를 처리
  TimerModel? currentTimerModel;
  TimerModel? lastTimerModel;
  bool hasHistory = false; // 기존 데이터 가지고 있는지 여부

  // 타이머 초기값 설정
  CircleTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(CircleTimerInitial(_duration, [], CircleTimerStatus.initial)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<TimerTicked>(_onTicked);
    on<AddTimerHistory>(_onAddTimerHistory);
    on<FetchTimerHistory>(_onFetchTimerHistory);
    on<UpdateTimerHistory>(_onUpdateTimerHistory);
    on<TimerStreamStop>(_onTimerPauseAndStop);
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
    return TimerModel(
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

    emit(const CircleTimerRun(
        _duration, [], CircleTimerStatus.doing)); // 0초부터 시작
  }

  void _onPaused(TimerPaused event, Emitter<CircleTimerState> emit) {
      _tickerStream?.pause(); // 타이머 멈춤

      if (currentTimerModel == null) return;
      lastTimerModel = currentTimerModel;

      // 현재 시간으로 EndDt 업데이트
      currentTimerModel = currentTimerModel!.copyWith(
        todoIdx: event.todoIdx,
        historyStartDt: lastTimerModel!.historyStartDt,
        historyEndDt: DateTime.now().toIso8601String(),
        totalTm: getTotalTm(),
      );

      final updatedTimerModels = List<TimerModel>.from(state.timerModels)..add(currentTimerModel!);
      emit(CircleTimerPause(
          state.duration, updatedTimerModels, CircleTimerStatus.update));
  }


  void _onResumed(TimerResumed resume, Emitter<CircleTimerState> emit) {
    currentTimerModel = _createTimerModel(null, 0); // 시작 버튼을 누른 시간 기록

    if(hasHistory) {
      // 타이머 진행한 총 시간
      final resumedDuration = state.duration;
      // 새로운 스트림 시작 (이전 시간에서 이어서 증가)
      _startTicker((duration) => add(TimerTicked(duration: resumedDuration + duration)));
    } else {
      // 기존 스트림 이어서 재개
      _tickerStream?.resume();
    }

    emit(CircleTimerRun(
        state.duration, state.timerModels, CircleTimerStatus.doing));
  }

  void _onReset(TimerReset event, Emitter<CircleTimerState> emit) {
    cancel();
    emit(CircleTimerInitial(
        _duration, [], CircleTimerStatus.initial)); // 초기 상태로 리셋
  }

  // 타이머만 정지 (기록은 유지)
  void _onTimerPauseAndStop(TimerStreamStop event, Emitter<CircleTimerState> emit) {
    cancel();
    emit(CircleTimerStop());
  }

  void _onTicked(TimerTicked event, Emitter<CircleTimerState> emit) {
    emit(CircleTimerRun(
        event.duration, state.timerModels, CircleTimerStatus.doing));
  }

  void _onAddTimerHistory(
      AddTimerHistory event, Emitter<CircleTimerState> emit) async {
    try {
      final List<TimerModel> timerHistories = state.timerModels;

      if (timerHistories.isNotEmpty) {
        await TimerRepository.insertTimerHistory(timerHistories);
      }
    } catch (e) {
      print("circle timer onAddTimerHistory 중 에러 발생: $e");
    }
  }

  Future<void> _onFetchTimerHistory(
      FetchTimerHistory event, Emitter<CircleTimerState> emit) async {
    try {
      final timerHistories = await TimerRepository.getTimerHistoriesByTodoIndex(event.todoIdx) ?? [];
      hasHistory = timerHistories.isNotEmpty;

      if(hasHistory) {
        final resumedDuration = timerHistories.fold<int>(0, (sum, timer) => sum + (int.tryParse(timer.totalTm) ?? 0)); // totalTm 합 구하기
        emit(CircleTimerPause(resumedDuration, timerHistories, CircleTimerStatus.success));
      } else {
        emit(CircleTimerInitial(0, [], CircleTimerStatus.initial));
      }
    } catch (e) {
      print("_onFetchTimerHistory 중 에러 발생: $e");
    }
  }

  Future<void> _onUpdateTimerHistory(
      UpdateTimerHistory event, Emitter<CircleTimerState> emit) async {
    try {
      final newTimerHistory = state.timerModels;
      await TimerRepository.updateTimerHistoryIfChanged(newTimerHistory);
    } catch (e) {
      print("_onUpdateTimerHistory 수정 저장 중 에러 발생 $e");
    }
  }
}
