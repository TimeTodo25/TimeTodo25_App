import 'package:time_todo/ui/utils/timer_log_entry.dart';

class TimerLog {
  final List<TimerLogEntry> _allLogs = [];
  TimerLogEntry? _startLog;
  TimerLogEntry? _endLog;
  int _totalSpendTime = 0;

  void updateStartedLog(TimerLogEntry log) {
    _startLog = log;
  }

  void updateEndedLog(TimerLogEntry log) {
    _endLog = log;
  }

  void updateAllLog() {
    if(_startLog != null) {
      _allLogs.add(_startLog!);
    }

    if(_endLog != null) {
      _allLogs.add(_endLog!);
    }

    // totalSpendTime
    _allLogs.add(TimerLogEntry(type: TimerLogType.spendTime, timestamp: DateTime.now(), spendTime: _totalSpendTime));
  }

  // 매번 시작시간부터 마침시간까지 소모시간 계산
  void updateTotalSpendTimeInSeconds() {
    if(startLog != null && endLog != null) {
      _totalSpendTime = endLog!.timestamp.difference(startLog!.timestamp).inSeconds;
    }
  }

  List<TimerLogEntry> get logs => List.unmodifiable(_allLogs);
  TimerLogEntry? get startLog => _startLog;
  TimerLogEntry? get endLog => _endLog;

  void clearLogs() {
    _allLogs.clear();
    _startLog = null;
    _endLog = null;
  }
}