import 'package:time_todo/ui/utils/timer_log_entry.dart';

class TimerLog {
  final List<TimerLogEntry> _allLogs = [];
  TimerLogEntry? _startLog;
  TimerLogEntry? _endLog;
  int _totalSpendTime = 0;
  int _pausedTime = 0;
  int _runningTime = 0;

  void updateStartedLog(TimerLogEntry log) {
    _startLog = log;

    updateRunningTime();
    updateAllLog(); // 전체 log update.. linearTimer 를 그리기 위함
  }

  // end log update.. linearTimer 를 그리기 위함
  void updateEndedLog(TimerLogEntry log) {
    _endLog = log;

    updateAllLog(); // 전체 log update.. linearTimer 를 그리기 위함
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

    // totalSpendTime
    _allLogs.add(TimerLogEntry(type: TimerLogType.spendTime, timestamp: DateTime.now(), spendTime: _totalSpendTime));
  }

  // 매번 시작시간부터 마침시간까지 소모시간 계산. 분 단위
  void updateTotalSpendTime() {
    if(startLog != null && endLog != null) {
      _totalSpendTime = endLog!.timestamp.difference(startLog!.timestamp).inMinutes;
    }
  }

  // 매번 시작시간부터 마침시간까지 소모시간 계산. 초 단위
  int updateRunningTime() {
    if(startLog != null && endLog != null) {
      return _runningTime = endLog!.timestamp.difference(startLog!.timestamp).inSeconds;
    } return 0;
  }

  // 일시정지 후 다시 시작까지 텀 계산
  int getPausedToResumedTime() {
    if(startLog != null && endLog != null) {
     return _pausedTime = startLog!.timestamp.difference(endLog!.timestamp).inSeconds;
    } return 0;
  }

  List<TimerLogEntry> get logs => List.unmodifiable(_allLogs);
  TimerLogEntry? get startLog => _startLog;
  TimerLogEntry? get endLog => _endLog;

  void clearLogs() {
    _allLogs.clear();
    _startLog = null;
    _endLog = null;
  }

  List<TimerLogEntry> generateBarSegments() {
    // 결과를 저장할 TimerBarSegment 리스트 생성
    final List<TimerLogEntry> segments = [];

    // 마지막 TimerLogEntry를 추적하기 위한 변수
    TimerLogEntry? lastEntry;

    // logs 리스트를 순회
    for (final entry in logs) {
      if (lastEntry != null) {
        // 이전 엔트리와 현재 엔트리 간의 시간 차이를 계산
        final duration = entry.timestamp.difference(lastEntry.timestamp).inSeconds;
        segments.add(TimerLogEntry(spendTime: duration, type: entry.type, timestamp: DateTime.now()));
      }
      // 현재 엔트리를 마지막 엔트리로 갱신
      lastEntry = entry;
    }
    // 생성된 TimerBarSegment 리스트 반환
    return segments;
  }
}