import 'package:time_todo/entity/timer/timer_tbl.dart';

extension TimerModelExtensions on List<TimerModel> {
  /// TimerModel에서 `todoIdx`만 추출하여 중복 없이 리스트로 반환
  List<int> getTodoIdxList() {
    return map((timer) => timer.todoIdx).toSet().toList();
  }

  /// 주어진 `todoIdx`와 일치하는 `totalTm`을 int로 변환하여 합산
  int getTotalTmByTodoIdx(int todoIdx) {
    return where((timer) => timer.todoIdx == todoIdx)
        .map((timer) => int.parse(timer.totalTm))
        .fold(0, (sum, value) => sum + value);
  }
}