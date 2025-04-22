import 'package:equatable/equatable.dart';
import 'package:time_todo/model/home/response/catagory_list.dart';
import 'package:time_todo/model/home/response/interval_day_todo_list.dart';
import 'package:time_todo/model/home/response/home_timer_history_list.dart';

enum HomeStatus {
  initial,
  serverLoading,
  serverLoaded,
  serverFailed,
  localLoading,
  localLoaded,
  localFailed,
  updated
}

class HomeState extends Equatable {
  final DateTime homeDate;
  final List<IntervalDayTodoList> dDayList;
  final List<CategoryList> categoryList;
  final List<HomeTimerHistoryList> timerHistoryList;
  final HomeStatus status;

  const HomeState(
      {required this.homeDate,
      required this.dDayList,
      required this.categoryList,
      required this.timerHistoryList,
      this.status = HomeStatus.initial});

  HomeState copyWith({
    DateTime? homeDate,
    List<IntervalDayTodoList>? dDayList,
    List<CategoryList>? categoryList,
    List<HomeTimerHistoryList>? timerHistoryList,
    HomeStatus? status,
  }) {
    return HomeState(
      homeDate: homeDate ?? this.homeDate,
      dDayList: dDayList ?? this.dDayList,
      categoryList: categoryList ?? this.categoryList,
      timerHistoryList: timerHistoryList ?? this.timerHistoryList,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [homeDate, dDayList, categoryList, timerHistoryList, status];
}
