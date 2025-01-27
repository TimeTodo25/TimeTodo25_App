import 'package:time_todo/ui/todo/widget/timer_log/timer_log_entry.dart';

class LinearTimerLog {
  // 지난 로그들을 그리기 위해 저장할 변수
  final List<TimerLogEntry> _allLogs = [];

  // 로그에 추가
  void updateAllLogs(TimerLogEntry updateLog){
    _allLogs.add(TimerLogEntry(type: updateLog.type, timestamp: updateLog.timestamp, spendTime: updateLog.spendTime));
  }

  List<TimerLogEntry> get logs => List.unmodifiable(_allLogs);

  void clearLogs() {
    _allLogs.clear();
  }
}