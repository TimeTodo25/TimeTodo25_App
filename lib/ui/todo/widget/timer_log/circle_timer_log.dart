import 'package:time_todo/entity/timer/timer_tbl.dart';

class CircleTimerLog {
  final List<TimerModel> _allLogs = [];

  // 중복 확인 후 로그에 추가
  void updateAllLogs(TimerModel newLog) {
    bool isDuplicate = _allLogs.any((log) =>
    log.idx == newLog.idx && log.historyEndDt == newLog.historyEndDt);
    if (!isDuplicate) {
      _allLogs.add(newLog);
    }
  }

  // 타이머 유지 시간 계산
  // void _calculateTotalSpendTime() {
  //   if (_startLog != null && _endLog != null) {
  //     _totalSpendTime =
  //         _endLog!
  //             .timestamp
  //             .difference(_startLog!.timestamp)
  //             .inSeconds;
  //   }
  // }

  List<TimerModel> get logs => List.unmodifiable(_allLogs);
}


//
// class CircleTimerLog {
//   final List<Segment> _allLogs = [];
//   Segment? _startLog;
//   Segment? _endLog;
//   int _totalSpendTime = 0;
//
//   // 시작 로그 업데이트
//   void updateStartLog(Segment log) {
//     _startLog = log;
//   }
//
//   // 종료 로그 업데이트
//   void updateEndLog(Segment log) {
//     _endLog = log;
//
//     _calculateTotalSpendTime();
//     updateSpendTimeLogWhenPaused();
//   }
//
//   void updateSpendTimeLogWhenPaused() {
//     if(_startLog != null) {
//       _allLogs.add(_startLog!);
//     }
//
//     if(_endLog != null) {
//       _allLogs.add(_endLog!);
//     }
//
//     // totalSpendTime
//     _allLogs.add(Segment(type: TimerLogType.paused, timestamp: DateTime.now(), spendTime: _totalSpendTime));
//   }
//
//   // 타이머 유지 시간 계산
//   void _calculateTotalSpendTime() {
//     if (_startLog != null && _endLog != null) {
//       _totalSpendTime =
//           _endLog!.timestamp.difference(_startLog!.timestamp).inSeconds;
//     }
//   }
//
//   List<Segment> get logs => List.unmodifiable(_allLogs);
//   Segment? get startLog => _startLog;
//   Segment? get endLog => _endLog;
//
//   void clearLogs() {
//     _allLogs.clear();
//     _startLog = null;
//     _endLog = null;
//     _totalSpendTime = 0;
//   }
// }

//
// class LinearTimerLog {
//   // 지난 로그들을 그리기 위해 저장할 변수
//   final List<TimerModel> _allLogs = [];
//
//   // 중복 확인 후 로그에 추가
//   void updateAllLogs(TimerModel newLog) {
//     bool isDuplicate = _allLogs.any((log) => log.idx == newLog.idx && log.historyEndDt == newLog.historyEndDt);
//     if (!isDuplicate) {
//       _allLogs.add(newLog);
//     }
//   }
//
//   List<TimerModel> get logs => List.unmodifiable(_allLogs);
//
//   void clearLogs() {
//     _allLogs.clear();
//   }
// }