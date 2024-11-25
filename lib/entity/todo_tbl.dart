class Todo {
  int idx;
  int categoryIdx;
  String userName;
  String content;
  DateTime? startStopWtDt;
  DateTime? endStopWtDt;
  DateTime? startTargetDt;
  DateTime? endTargetDt;
  DateTime? createDt;
  DateTime? updateDt;
  DateTime? deleteDt;

  Todo({
    required this.idx,
    required this.categoryIdx,
    required this.userName,
    required this.content,
    this.startStopWtDt,
    this.startTargetDt
  });
}