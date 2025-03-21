import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_goal_tbl.freezed.dart';
part 'today_goal_tbl.g.dart';

@freezed
class TodayGoal with _$TodayGoal {
  factory TodayGoal(
      {int? idx,
      required DateTime goalDate,
      required String goalText,
      required String todayIcon,
      DateTime? startStopWtDt,
      DateTime? endStopWtDt,
      DateTime? startTargetDt,
      DateTime? endTargetDt,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      int? syncIdx, // 서버 pk
      int? syncCategoryIdx, // 서버 fk
      DateTime? syncDt, // 서버 동기화 시간
      @Default("P") String syncStatus // 서버
      }) = _TodayGoal;

  factory TodayGoal.fromJson(Map<String, dynamic> json) => _$TodayGoalFromJson(json);
}
