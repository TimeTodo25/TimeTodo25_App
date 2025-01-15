import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/model/todo/response/timer_histories.dart';

part 'todo_detail_response.freezed.dart';
part 'todo_detail_response.g.dart';

@freezed
class TodoDetailResponse with _$TodoDetailResponse {
  factory TodoDetailResponse({
    required int idx,
    required String content,
    String? totalTm,
    List<TimerHistories>? timerHistories,
  }) = _TodoDetailResponse;

  factory TodoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoDetailResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
