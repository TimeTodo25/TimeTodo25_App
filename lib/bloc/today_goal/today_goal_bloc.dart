import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class TodayGoalBloc extends Bloc<TodayGoalEvent, TodayGoalState> {
  TodayGoalBloc() : super(TodayGoalState(goalDate: DateTime.now())) {
    on<InitTodayGoal>(_onInitTodayGoal);
    on<UpdateTodayGoal>(_onUpdateTodayGoal);
    on<UpdateGoalDate>(_onUpdateGoalDate);
  }

  DateTime today = DateTime.now();
  String todayGoal = '오늘의 목표를 작성해 주세요';
  String basicEmojiPath = "lib/assets/images/home_emoji_smile.png";

  void _onInitTodayGoal(InitTodayGoal event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(
        status: TodayGoalStatus.initial,
      goalDate: today,
      goalIconPath: basicEmojiPath,
      goalText: todayGoal
    ));
  }

  void _onUpdateTodayGoal(UpdateTodayGoal event, Emitter<TodayGoalState> emit) {
    DateTime goalDate = DateTimeUtils.combineDateAndTime(event.goalDate!, today);
    String goalText = event.goalText;
    String goalIconPath = event.goalIconPath;

    emit(state.copyWith(goalDate: goalDate, goalText: goalText, goalIconPath: goalIconPath, status: TodayGoalStatus.updated));
  }

  // 날짜 변경
  void _onUpdateGoalDate(UpdateGoalDate event, Emitter<TodayGoalState> emit) {
    emit(state.copyWith(goalDate: event.goalDate, status: TodayGoalStatus.updated));
  }
}