import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/calendar/timer_graph_event.dart';
import 'package:time_todo/bloc/calendar/timer_graph_state.dart';

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
      if (timerHistories.isEmpty) {
        emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.initial));
      } else {
        emit(TimerGraphState(timerModels: timerHistories, status: TimerGraphStatus.success));
      }

    } catch (e) {
      emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.error));
    }
  }
}


