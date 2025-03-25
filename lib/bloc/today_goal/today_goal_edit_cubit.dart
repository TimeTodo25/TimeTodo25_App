import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/repository/today_goal_repository.dart';
class TodayGoalEditState extends Equatable {
  final DateTime goalDate;
  final String goalText;
  final String goalIcon;

  const TodayGoalEditState({
    required this.goalDate,
    required this.goalText,
    required this.goalIcon,
  });

  factory TodayGoalEditState.initial() {
    return TodayGoalEditState(
      goalDate: DateTime.now(),
      goalText: '',
      goalIcon: 'lib/assets/images/home_emoji_smile.png', //basicEmojiPath
    );
  }

  TodayGoalEditState copyWith({
    DateTime? goalDate,
    String? goalText,
    String? goalIcon,
  }) {
    return TodayGoalEditState(
      goalDate: goalDate ?? this.goalDate,
      goalText: goalText ?? this.goalText,
      goalIcon: goalIcon ?? this.goalIcon,
    );
  }

  @override
  List<Object> get props => [goalDate, goalText, goalIcon];
}

class TodayGoalDateCubit extends Cubit<TodayGoalEditState> {
  TodayGoalDateCubit() : super(TodayGoalEditState.initial());

  Future<void> getTodayGoal(DateTime newDate) async {
    final repo = TodayGoalRepository();
    final goalData = await repo.getTodayGoalByDate(newDate);

    emit(state.copyWith(
      goalDate: newDate,
      goalText: goalData?.goalText ?? '',
      goalIcon: goalData?.todayIcon ?? '',
    ));
  }

  void changeDate(DateTime newDate) async {
    emit(state.copyWith(goalDate: newDate));
  }

  void changeText(String text) {
    emit(state.copyWith(goalText: text));
  }

  void changeIcon(String iconPath) {
    emit(state.copyWith(goalIcon: iconPath));
  }
}