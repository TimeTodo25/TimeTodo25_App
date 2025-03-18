import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';

class TodayGoalBloc extends Bloc<TodayGoalEvent, TodayGoalState> {
  TodayGoalBloc() : super(TodayGoalState()) {

  }
}