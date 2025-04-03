import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'routine_tbl.freezed.dart';
part 'routine_tbl.g.dart';

@freezed
class Routine with _$Routine {
  factory Routine({
    int? idx,
    int? syncIdx,
    int? categoryIdx,
    int? categorySyncIdx,
    required String content,
    required DateTime startDt,
    required DateTime endDt,
    required String cycleType,
    required String cycleValue,
    @Default('') String rm,
    DateTime? createDt,
    required DateTime updateDt,
    @Default('Y') String status,
    @Default('P') String? syncStatus,
    DateTime? syncDt,
  }) = _Routine;

  factory Routine.fromJson(Map<String, dynamic> json) =>
      _$RoutineFromJson(json);
}
