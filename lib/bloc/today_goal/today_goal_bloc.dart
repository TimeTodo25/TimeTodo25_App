import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
import 'package:time_todo/entity/today_goal/today_goal_tbl.dart';
import 'package:time_todo/repository/today_goal_repository.dart';

class TodayGoalBloc extends Bloc<TodayGoalEvent, TodayGoalState> {
  final todayGoalRepo = TodayGoalRepository();

  TodayGoalBloc() : super(TodayGoalState(goalDate: DateTime.now())) {
    on<InitTodayGoal>(_onInitTodayGoal);
    on<UpdateGoalDate>(_onUpdateGoalDate);
    on<UpdateGoalIcon>(_onUpdateGoalIcon);
    on<UpdateGoalText>(_onUpdateGoalText);
    on<UpdateTotalTm>(_onUpdateTotalTm);
    on<AddTodayGoal>(_onAddTodayGoal);
    on<GetTodayGoal>(_onGetTodayGoal);
  }

  DateTime today = DateTime.now();
  String basicEmojiPath = "lib/assets/images/home_emoji_smile.png";

  void _onInitTodayGoal(InitTodayGoal event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        status: TodayGoalStatus.initial,
        goalDate: today,
        goalIconPath: basicEmojiPath,
        goalText: '',
        totalTm: 0.0
    ));
  }

  // 날짜 변경
  void _onUpdateGoalDate(UpdateGoalDate event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        goalDate: event.goalDate, status: TodayGoalStatus.editing));
  }

  // 오늘의 아이콘 변경
  void _onUpdateGoalIcon(UpdateGoalIcon event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        goalIconPath: event.iconPath, status: TodayGoalStatus.editing));
  }

  // 목표 텍스트 변경
  void _onUpdateGoalText(UpdateGoalText event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        goalText: event.goalText, status: TodayGoalStatus.editing));
  }

  // 총 시간 업데이트
  void _onUpdateTotalTm(UpdateTotalTm event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        totalTm: event.totalTm, status: TodayGoalStatus.editing));
  }

  // 로컬 저장
  Future<void> _onAddTodayGoal(AddTodayGoal event, Emitter<TodayGoalState> emit) async {
    try {
      if(state.goalDate == null) return;

      final newTodayGoal = TodayGoal(
          goalDate: state.goalDate!,
          goalText: state.goalText,
          todayIcon: state.goalIconPath,
          createDt: DateTime.now()
      );

      await todayGoalRepo.insertTodayGoal(newTodayGoal);
      emit(state.copyWith(status: TodayGoalStatus.updated));
    } catch (e) {
      print("TodayGoal 추가 중 에러 발생 $e");
    }
  }

  // 특정 날짜의 오늘의 목표 가져 오기
  Future<void> _onGetTodayGoal(GetTodayGoal event, Emitter<TodayGoalState> emit) async {
    try {
      final it = await todayGoalRepo.getTodayGoalByDate(event.goalDate);
      if(it != null) {
        emit(state.copyWith(goalDate: it.goalDate, goalText: it.goalText, goalIconPath: it.todayIcon, status: TodayGoalStatus.success));
      }

    } catch (e) {
      print("_onGetTodayGoal 중 에러 발생 $e");
    }
  }
}