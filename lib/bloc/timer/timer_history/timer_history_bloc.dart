import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/api/todo_api.dart';
import 'package:time_todo/dio/api_dio_client.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';
import 'package:time_todo/model/todo/request/todo_timer_data.dart';
import 'package:time_todo/model/todo/request/todo_timer_request.dart';
import 'package:time_todo/repository/timer_repository.dart';
import 'timer_history_event.dart';
import 'timer_history_state.dart';

class TimerHistoryBloc extends Bloc<TimerHistoryEvent, TimerHistoryState> {
  late TimerRepository _timerRepo;
  late TodoApi _api;

  /// CircleTimer 는 멈춤 상태를 기록하지 않음
  TimerModel? currentTimerModel;
  TimerModel? lastTimerModel;
  bool hasHistory = false; // 기존 데이터 가지고 있는지 여부

  // 타이머 초기값 설정
  TimerHistoryBloc() : super(TimerHistoryState.initial()) {
    _api = TodoApi(ApiClient.dio);
    _timerRepo = TimerRepository();

    on<SaveTimerHistory>(_onSaveTimerHistory);
    on<FetchTimerHistory>(_onFetchTimerHistory);
  }

  String getTotalTm() {
    final startTime = DateTime.parse(lastTimerModel!.historyStartDt);
    final endTime = DateTime.now();
    final totalTm = endTime.difference(startTime).inSeconds;
    return totalTm.toString();
  }

  Future<void> _saveToLocal(
      List<TimerModel> timers, Emitter<TimerHistoryState> emit) async {
    try {
      await _timerRepo.updateTimerHistoryIfChanged(timers);
      emit(state.copyWith(
        status: TimerHistoryStatus.added,
        timerModels: timers,
      ));
    } catch (e) {
      print("❌ 타이머 기록 로컬 저장 실패: $e");
      emit(state.copyWith(status: TimerHistoryStatus.error));
    }
  }

  Future<List<TimerModel>> _saveToServer(int todoIdx, List<TimerModel> timers) async {
    try {
      // 서버 전송용 모델 생성
      final request = _buildTimerRequest(todoIdx, timers);
      final response = await _api.todoTimerRegister(request);

      // 서버 응답값으로 TimerModel 업데이트
      final updatedTimers = List<TimerModel>.generate(
        timers.length,
            (i) => timers[i].copyWith(
          syncIdx: response.timerIdxList[i],
          syncDt: response.updateDt,
        ),
      );

      return updatedTimers;
    } catch (e) {
      print("❌ 타이머 기록 서버 저장 실패: $e");
      return timers; // 실패 시 원본 그대로 반환
    }
  }

  // TimerModel (로컬) -> TodoTimerData (서버) -> TodoTimerRequest 변환
  TodoTimerData _toTodoTimerData(TimerModel model) {
    return TodoTimerData(
      startDt: DateTime.parse(model.historyStartDt),
      endDt: DateTime.parse(model.historyEndDt),
    );
  }

  TodoTimerRequest _buildTimerRequest(int todoIdx, List<TimerModel> timers) {
    final timeDatas = timers.map(_toTodoTimerData).toList();
    return TodoTimerRequest(todoIdx: todoIdx, timeDatas: timeDatas);
  }


  Future<void> _onSaveTimerHistory(SaveTimerHistory event, Emitter<TimerHistoryState> emit) async {
    await _saveToServer(event.todoIdx, event.timerModels); // 서버 저장: 기존 기록이 있든 없든 서버 저장 실행
    await _saveToLocal(event.timerModels, emit);           // 로컬 저장: 기존 기록 존재 여부에 따라 add, update 분기
  }

  // 로컬 히스토리 가져오기
  Future<void> _onFetchTimerHistory(
      FetchTimerHistory event, Emitter<TimerHistoryState> emit) async {
    try {
      final timerHistories = await _timerRepo.getTimerHistoriesByTodoIndex(event.todoIdx) ?? [];
      hasHistory = timerHistories.isNotEmpty;

      if(hasHistory) {
        final resumedDuration = timerHistories.fold<int>(0, (sum, timer) => sum + (int.tryParse(timer.totalTm) ?? 0)); // totalTm 합 구하기
        emit(state.copyWith(status: TimerHistoryStatus.success, timerModels: timerHistories, duration: resumedDuration));
      } else {
        emit(state.copyWith(
          status: TimerHistoryStatus.success,
          timerModels: [],
          duration: 0,
        ));
      }
    } catch (e) {
      print("_onFetchTimerHistory 중 에러 발생: $e");
      emit(state.copyWith(status: TimerHistoryStatus.error));
    }
  }
}
