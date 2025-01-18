import 'package:time_todo/ui/utils/timer_log_entry.dart';

class TimerLog {
  final List<TimerLogEntry> _allLogs = [];
  TimerLogEntry? _startLog;
  TimerLogEntry? _endLog;
  int _totalSpendTime = 0;

  void updateStartedLog(TimerLogEntry log) {
    _startLog = log;
  }

  void updateEndedLogAndSpendTime(TimerLogEntry log) {
    _endLog = log;

    updateTotalSpendTime(); // 타이머 멈춤 시에만 소모시간 계산
    updateAllLog(); // 타이머 멈춤 시에만 전체 log update
  }

  void updateAllLog() {
    if(_startLog != null) {
      _allLogs.add(_startLog!);
    }

    if(_endLog != null) {
      _allLogs.add(_endLog!);
    }

    _allLogs.add(TimerLogEntry(type: TimerLogType.totalSpendTime, timestamp: DateTime.now(), totalSpendTime: _totalSpendTime));
  }

  // 시작시간부터 마침시간까지 소모시간 계산
  void updateTotalSpendTime() {
    if(startLog != null && startLog != null) {
      _totalSpendTime = endLog!.timestamp.difference(startLog!.timestamp).inMinutes;
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