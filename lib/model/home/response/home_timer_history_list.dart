import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_timer_history_list.g.dart';
part 'home_timer_history_list.freezed.dart';

@freezed
class HomeTimerHistoryList with _$HomeTimerHistoryList {
  factory HomeTimerHistoryList({
    required String mainColor,
    required DateTime startTm,
    required DateTime endTm
  }) = _HomeTimerHistoryList;

  factory HomeTimerHistoryList.fromJson(Map<String, dynamic> json) =>
      _$HomeTimerHistoryListFromJson(json);
}