import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_event.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_state.dart';
import 'package:time_todo/entity/timer/timer_extension.dart';
import 'package:time_todo/repository/timer_repository.dart';

class AllTimerBloc extends Bloc<AllTimerEvent, AllTimerState> {
  final timerRepo = TimerRepository();

  AllTimerBloc() : super(const AllTimerState([], AllTimerStatus.initial, {})) {
    on<InitAllTimerBloc>(_initState);
    on<GetTimerHistoryByDate>(_getAllTimerHistoryByDate);
  }

  void _initState(InitAllTimerBloc event, Emitter<AllTimerState> emit) {
    emit(state.copyWith(status: AllTimerStatus.initial, hasTimerTodoIds: [], todoTotalTms: {}));
  }

  // 해당 날짜에 타이머 기록 가져오기
  Future<void> _getAllTimerHistoryByDate(GetTimerHistoryByDate event, Emitter<AllTimerState> emit) async {
    try {
      final timerHistories = await timerRepo.getAllValidTimerHistoryByDate(event.date);
      final ids = timerHistories.getTodoIdxList();
      Map<int, int> todoTotalTms = {};

      // timerHistories의 각 항목을 순회하여 todoIdx별로 totalTm 합산
      for (var history in timerHistories) {
        int todoIdx = history.todoIdx;
        int totalTm = int.tryParse(history.totalTm) ?? 0;

        // Map에 todoIdx가 있으면 totalTm을 추가, 없으면 새로 추가
        if (todoTotalTms.containsKey(todoIdx)) {
          todoTotalTms[todoIdx] = (todoTotalTms[todoIdx] ?? 0) + totalTm;
        } else {
          todoTotalTms[todoIdx] = totalTm;
        }
      }
      emit(state.copyWith(status: AllTimerStatus.success, hasTimerTodoIds: ids, todoTotalTms: todoTotalTms));

    } catch (e) {
      emit(state.copyWith(status: AllTimerStatus.error));
      print("_getAllValidTodoIdxByDate 에러 $e");
    }
  }
}