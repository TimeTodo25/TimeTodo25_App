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

  Todo({required this.idx,
    required this.categoryIdx,
    required this.userName,
    required this.content,
    this.startStopWtDt,
    this.startTargetDt,
    this.endStopWtDt,
    this.endTargetDt,
    this.createDt,
    this.updateDt,
    this.deleteDt});

  Todo copyWith({
    int? idx,
    int? categoryIdx,
    String? userName,
    String? content,
    DateTime? startStopWtDt,
    DateTime? endStopWtDt,
    DateTime? startTargetDt,
    DateTime? endTargetDt,
    DateTime? createDt,
    DateTime? updateDt,
    DateTime? deleteDt,

  }) {
    return Todo(
        idx: idx ?? this.idx,
        categoryIdx: categoryIdx ?? this.categoryIdx ,
        userName: userName ?? this.userName,
        content: content ?? this.content,
        startStopWtDt: startStopWtDt ?? this.startStopWtDt,
        endStopWtDt: endStopWtDt ?? this.endStopWtDt,
        startTargetDt: startTargetDt ?? this.startTargetDt,
        endTargetDt: endTargetDt ?? this.endTargetDt,
        createDt: createDt ?? this.createDt,
        updateDt: updateDt ?? this.updateDt,
        deleteDt: deleteDt ?? this.deleteDt
    );
  }

  // DB 저장을 위해 Map 형태로 변환
  Map<String, dynamic> toMap() {
    return {
      'category_idx': categoryIdx,
      'user_name': userName,
      'content': content,
      'start_stop_wt_dt': startStopWtDt?.toIso8601String(),
      'end_stop_wt_dt': endStopWtDt?.toIso8601String(),
      'start_target_dt': startTargetDt?.toIso8601String(),
      'end_target_dt': endTargetDt?.toIso8601String(),
      'create_dt': createDt?.toIso8601String(),
      'update_dt': updateDt?.toIso8601String(),
      'delete_dt': deleteDt?.toIso8601String()
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      idx: map['idx'],
      categoryIdx: map['category_idx'],
      userName: map['user_name'],
      content: map['content'],
      startStopWtDt: map['start_stop_wt_dt'] != null
          ? DateTime.parse(map['start_stop_wt_dt'])
          : null,
      endStopWtDt: map['end_stop_wt_dt'] != null
          ? DateTime.parse(map['end_stop_wt_dt'])
          : null,
      startTargetDt: map['start_target_dt'] != null
          ? DateTime.parse(map['start_target_dt'])
          : null,
      endTargetDt: map['end_target_dt'] != null
          ? DateTime.parse(map['end_target_dt'])
          : null,
      createDt:
      map['create_dt'] != null ? DateTime.parse(map['create_dt']) : null,
      updateDt:
      map['update_dt'] != null ? DateTime.parse(map['update_dt']) : null,
      deleteDt:
      map['delete_dt'] != null ? DateTime.parse(map['delete_dt']) : null,
    );
  }
}
