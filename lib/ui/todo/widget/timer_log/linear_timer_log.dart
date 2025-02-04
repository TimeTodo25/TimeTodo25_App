import 'package:time_todo/entity/timer/timer_tbl.dart';

class LinearTimerLog {
  // 지난 로그들을 그리기 위해 저장할 변수
  final List<TimerModel> _allLogs = [];

  // 로그에 추가
  void updateAllLogs(TimerModel updateLog){
    _allLogs.add(TimerModel(historyEndDt: updateLog.historyEndDt, historyStartDt: updateLog.historyStartDt, historyType: updateLog.historyType, totalTm: updateLog.totalTm, todoIdx: updateLog.todoIdx));
  }

  List<TimerModel> get logs => List.unmodifiable(_allLogs);

  void clearLogs() {
    _allLogs.clear();
  }
}