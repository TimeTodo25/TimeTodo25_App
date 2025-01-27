
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_entry.dart';

class CircleTimerLog {
  final List<TimerLogEntry> _allLogs = [];
  TimerLogEntry? _startLog;
  TimerLogEntry? _endLog;
  int _totalSpendTime = 0;

  // 시작 로그 업데이트
  void updateStartLog(TimerLogEntry log) {
    _startLog = log;
  }

  // 종료 로그 업데이트
  void updateEndLog(TimerLogEntry log) {
    _endLog = log;

    _calculateTotalSpendTime();
    updateSpendTimeLogWhenPaused();
  }

  void updateSpendTimeLogWhenPaused() {
    if(_startLog != null) {
      _allLogs.add(_startLog!);
    }

    if(_endLog != null) {
      _allLogs.add(_endLog!);
    }

    // totalSpendTime
    _allLogs.add(TimerLogEntry(type: TimerLogType.paused, timestamp: DateTime.now(), spendTime: _totalSpendTime));
  }

  // 타이머 유지 시간 계산
  void _calculateTotalSpendTime() {
    if (_startLog != null && _endLog != null) {
      _totalSpendTime =
          _endLog!.timestamp.difference(_startLog!.timestamp).inSeconds;
    }
  }

  List<TimerLogEntry> get logs => List.unmodifiable(_allLogs);
  TimerLogEntry? get startLog => _startLog;
  TimerLogEntry? get endLog => _endLog;

  void clearLogs() {
    _allLogs.clear();
    _startLog = null;
    _endLog = null;
    _totalSpendTime = 0;
  }
}