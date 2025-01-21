import 'package:time_todo/ui/utils/timer_log_entry.dart';

class LinearTimerLog {
  // 지난 로그들을 그리기 위해 저장할 변수
  final List<TimerLogEntry> _allLogs = [];
  int _totalSpendTime = 0; // 총 타이머 시간

  // 타이머가 실행중일 때 그래프를 그리기 위한 변수
  int _pausedTime = 0; // 멈춘 시간
  int _runningTime = 0; // 진행 시간

  // 로그에 추가
  void addLogs(TimerLogEntry updateLog) {
    _allLogs.add(TimerLogEntry(type: updateLog.type, timestamp: updateLog.timestamp, spendTime: updateLog.spendTime));
  }

  // 매번 시작시간부터 마침시간까지 소모시간 계산. (분 단위)
  void updateTotalSpendTimeByMinutes() {
    TimerLogEntry lastEntry = logs.last; // 가장 마지막 로그
    TimerLogEntry beforeLastEntry = logs[_allLogs.length - 1];

    // 소모시간 계산 후 로그에 저장
    _totalSpendTime = lastEntry.timestamp.difference(beforeLastEntry.timestamp).inMinutes;
    _allLogs.add(TimerLogEntry(type: TimerLogType.spendTime, timestamp: DateTime.now(), spendTime: _totalSpendTime));
  }

  // 매번 시작시간부터 마침시간까지 소모시간 계산. (초 단위)
  void updateTotalSpendTimeBySeconds() {
    TimerLogEntry lastEntry = logs.last; // 가장 마지막 로그
    TimerLogEntry beforeLastEntry = logs[_allLogs.length - 1];

    // 소모시간 계산 후 로그에 저장
    _totalSpendTime = lastEntry.timestamp.difference(beforeLastEntry.timestamp).inSeconds;
    _allLogs.add(TimerLogEntry(type: TimerLogType.spendTime, timestamp: DateTime.now(), spendTime: _totalSpendTime));
  }

  List<TimerLogEntry> get logs => List.unmodifiable(_allLogs);

  void clearLogs() {
    _allLogs.clear();
  }

  List<TimerLogEntry> generateBarSegments() {
    // 결과를 저장할 TimerBarSegment 리스트 생성
    final List<TimerLogEntry> segments = [];

    // 마지막 TimerLogEntry를 추적하기 위한 변수
    TimerLogEntry? lastEntry;

    // logs 리스트를 순회
    for (final entry in logs) {
      if (lastEntry != null) {
        // 이전 엔트리와 현재 엔트리 간의 시간 차이를 계산하여, 그래프 그릴 목록에 포함
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