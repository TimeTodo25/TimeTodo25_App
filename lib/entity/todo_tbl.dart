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
    this.startTargetDt,
    this.endStopWtDt,
    this.endTargetDt,
    this.createDt,
    this.updateDt,
    this.deleteDt
  });

  // DB 저장을 위해 Map 형태로 변환
  Map<String, dynamic> toMap() {
    return {
      'category_idx': categoryIdx,
      'user_name': userName,
      'content': content,
      'start_stop_wt_dt': startStopWtDt,
      'end_stop_wt_dt': endStopWtDt,
      'start_target_dt' : startTargetDt,
      'end_target_dt': endTargetDt,
      'create_dt': createDt,
      'update_dt': updateDt,
      'delete_dt': deleteDt
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
        idx: map['idx'],
        categoryIdx: map['category_idx'],
        userName: map['user_name'],
        content: map['content'],
        startStopWtDt: map['start_stop_wt_dt'],
        endStopWtDt : map['end_stop_wt_dt'],
        startTargetDt : map['start_target_dt'],
        endTargetDt : map['end_target_dt'],
        createDt : map['create_dt'],
        updateDt : map['update_dt'],
        deleteDt : map['delete_dt']
    );
  }
}

