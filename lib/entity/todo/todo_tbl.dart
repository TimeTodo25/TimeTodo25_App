import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_tbl.freezed.dart';
part 'todo_tbl.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    int? idx,
    required String content,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'category_idx') required int categoryIdx,
    @Default(1) int status,
    @JsonKey(name: 'todo_date') required DateTime todoDate,
    @JsonKey(name: 'start_stop_wt_dt') DateTime? startStopWtDt,
    @JsonKey(name: 'end_stop_wt_dt') DateTime? endStopWtDt,
    @JsonKey(name: 'start_target_dt') DateTime? startTargetDt,
    @JsonKey(name: 'end_target_dt') DateTime? endTargetDt,
    @JsonKey(name: 'create_dt') DateTime? createDt,
    @JsonKey(name: 'update_dt') DateTime? updateDt,
    @JsonKey(name: 'delete_dt') DateTime? deleteDt,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
