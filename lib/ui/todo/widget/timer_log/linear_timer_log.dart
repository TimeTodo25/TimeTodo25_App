import 'package:time_todo/entity/timer/timer_tbl.dart';

class LinearTimerLog {
  // 지난 로그들을 그리기 위해 저장할 변수
  final List<TimerModel> _allLogs = [];

  // 중복 확인 후 로그에 추가
  void updateAllLogs(TimerModel newLog) {
    bool isDuplicate = _allLogs.any((log) => log.historyStartDt == newLog.historyStartDt || log.historyEndDt == newLog.historyEndDt);
    if (!isDuplicate) {
      _allLogs.add(newLog);
    } else {
    }
  }

  List<TimerModel> get logs => List.unmodifiable(_allLogs);

  void clearLogs() {
    _allLogs.clear();
  }
}