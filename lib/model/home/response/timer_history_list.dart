import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_history_list.g.dart';
part 'timer_history_list.freezed.dart';

@freezed
class TimerHistoryList with _$TimerHistoryList {
  factory TimerHistoryList({
    required String mainColor,
    required DateTime startTm,
    required DateTime endTm
  }) = _TimerHistoryList;

  factory TimerHistoryList.fromJson(Map<String, dynamic> json) =>
      _$TimerHistoryListFromJson(json);
}