import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/timer_graph/timer_graph_event.dart';
import 'package:time_todo/bloc/timer/timer_graph/timer_graph_state.dart';
import 'package:time_todo/repository/timer_repository.dart';

class TimerGraphBloc extends Bloc<TimerGraphEvent, TimerGraphState> {
  final timerRepo = TimerRepository();

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
      // 해당 날짜와 일치하는 timer History 만 가져오기
      final timerHistories = await timerRepo.getAllValidTimerHistoryByDate(event.date);

      emit(TimerGraphState(timerModels: timerHistories, status: TimerGraphStatus.success));
    } catch (e) {
      emit(const TimerGraphState(timerModels: [], status: TimerGraphStatus.error));
    }
  }
}

