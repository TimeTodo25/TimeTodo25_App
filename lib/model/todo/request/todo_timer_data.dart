import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_timer_data.freezed.dart';
part 'todo_timer_data.g.dart';

@freezed
class TodoTimerData with _$TodoTimerData {
  factory TodoTimerData({
    required DateTime startDt,
    required DateTime endDt,
  }) = _TodoTimerData;

  factory TodoTimerData.fromJson(Map<String, dynamic> json) =>
      _$TodoTimerDataFromJson(json);
}
