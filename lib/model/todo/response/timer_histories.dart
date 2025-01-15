import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_histories.freezed.dart';
part 'timer_histories.g.dart';

@freezed
class TimerHistories with _$TimerHistories {
  factory TimerHistories({
    required DateTime startDt,
    required DateTime endDt,
    required String totalTm,
  }) = _TimerHistories;

  factory TimerHistories.fromJson(Map<String, dynamic> json) =>
      _$TimerHistoriesFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
