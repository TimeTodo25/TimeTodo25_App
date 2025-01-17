import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'd_day_tbl.freezed.dart';
part 'd_day_tbl.g.dart';

@freezed
class Dday with _$Dday {
  factory Dday({
    int? idx,
    int? syncIdx,
    required String content,
    required DateTime targetDt,
    required String targetDelStatus,
    required DateTime createDt,
    required DateTime updateDt,
    @Default('Y') required String status,
    @Default('P') String? syncStatus,
    DateTime? syncDt,
  }) = _Dday;

  factory Dday.fromJson(Map<String, dynamic> json) => _$DdayFromJson(json);
}
