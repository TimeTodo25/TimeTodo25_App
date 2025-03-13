import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer_graph/timer_graph_event.dart';
import 'package:time_todo/bloc/timer_graph/timer_graph_state.dart';
import 'package:time_todo/entity/timer/timer_extension.dart';

import '../../repository/timer_repository.dart';

class TimerGraphBloc extends Bloc<TimerGraphEvent, TimerGraphState> {
  TimerGraphBloc() : super(const TimerGraphState(timerModels: [], status: TimerGraphStatus.initial)) {
    on<InitTimerGraph>(_onInitTimerGraph);
    on<FetchTimerGraph>(_onFetchTimerGraph);
  }

  void _onInitTimerGraph(InitTimerGraph event, Emitter<TimerGraphState> emit) async {
    emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.initial));
  }

  Future<void> _onFetchTimerGraph(FetchTimerGraph event, Emitter<TimerGraphState> emit) async {
    emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.loading));

    try {
      final timerHistories = await TimerRepository.getAllValidTimerHistory() ?? [];

      // 해당 날짜와 일치하는 timer History 만 가져오기
      // 추후 홈화면에서 날짜 변경 시, 그래프 다시 그리도록 해야 함..
      // final timerHistories = await TimerRepository.getAllValidTimerHistoryByDate(dateTime) ?? [];

      emit(TimerGraphState(timerModels: timerHistories, status: TimerGraphStatus.success));
    } catch (e) {
      emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.error));
    }
  }

  // 해당 날짜에 타이머 기록을 가지고 있는, 삭제 상태가 아닌 투두 idx 리스트 반환
  Future<void> getAllValidTodoIdxByDate(HasTimerHistory event, Emitter<TimerGraphState> emit) async {
    try {
      final timerHistories = await TimerRepository.getAllValidTimerHistoryByDate(event.dateTime);
      final ids = timerHistories.getTodoIdxList();

    } catch (e) {

    }

  }

  Future<bool> hasTimerHistoryByIdx(int todoIndex) async {
    try {
      final timerHistories = await TimerRepository.getTimerHistoriesByTodoIndex(todoIndex) ?? [];
      return timerHistories.isNotEmpty;
    } catch (e) {
      print("_hasTimerHistoryByIdx 중 에러 발생 $e");
      return false;
    }
  }
}

