import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/calendar/timer_graph_event.dart';
import 'package:time_todo/bloc/calendar/timer_graph_state.dart';

import '../../repository/timer_repository.dart';

class TimerGraphBloc extends Bloc<TimerGraphEvent, TimerGraphState> {
  TimerGraphBloc() : super(const TimerGraphState(timerModels: [], status: TimerGraphStatus.initial)) {
    on<FetchTimerGraph>(_onFetchTimerGraph);
  }


  Future<void> _onFetchTimerGraph(FetchTimerGraph event, Emitter<TimerGraphState> emit) async {
    try {
      final timerHistories = await TimerRepository.getAllValidTimerHistory() ?? [];
      if (timerHistories.isEmpty) return;
      emit(TimerGraphState(timerModels: timerHistories, status: TimerGraphStatus.success));
    } catch (e) {
      emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.error));
    }
  }
}


