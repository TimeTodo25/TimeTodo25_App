import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/entity/routine/routine_tbl.dart';

enum RoutineStatus {
  initial, // 초기 상태
  loading, // 데이터 로딩 중
  loaded, // 데이터 로드 완료
  creating, // 새 루틴 생성 중
  updating, // 루틴 수정 중
  deleting, // 루틴 삭제 중
  success, // 작업 성공
  failure, // 작업 실패

  // 유효성 검사 관련 에러 상태들
  emptyTitleError, // 제목 없음 에러
  invalidDateError, // 날짜 유효성 에러
}

class RoutineState extends Equatable {
  RoutineState({
    this.status = RoutineStatus.initial,
    this.categories = const <CategoryModel>[],
    this.routines = const <Routine>[],
    this.routine,
    this.routineStartDt,
    this.routineEndDt,
    this.routineStartTime,
    this.cycleType,
    this.cycleValue,
    this.content,
    this.rm,
    this.idx,
    this.categoryIdx,
    this.categoryName,
    this.categoryColor,
  });

  final RoutineStatus status;
  final List<CategoryModel> categories;
  final List<Routine> routines;
  final Routine? routine;
  final DateTime? routineStartDt;
  final DateTime? routineEndDt;
  final TimeOfDay? routineStartTime;
  final String? content;
  final String? cycleType;
  final String? cycleValue;
  final String? rm;
  final int? idx;
  final int? categoryIdx;
  final String? categoryName;
  final String? categoryColor;

  RoutineState copyWith({
    RoutineStatus? status,
    List<CategoryModel>? categories,
    List<Routine>? routines,
    Routine? routine,
    DateTime? routineStartDt,
    DateTime? routineEndDt,
    TimeOfDay? routineStartTime,
    String? content,
    String? cycleType,
    String? cycleValue,
    String? rm,
    int? idx,
    int? categoryIdx,
    String? categoryName,
    String? categoryColor,
  }) {
    return RoutineState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      routines: routines ?? this.routines,
      routine: routine ?? this.routine,
      routineStartDt: routineStartDt ?? this.routineStartDt,
      routineEndDt: routineEndDt ?? this.routineEndDt,
      routineStartTime: routineStartTime ?? this.routineStartTime,
      cycleType: cycleType ?? this.cycleType,
      cycleValue: cycleValue ?? this.cycleValue,
      content: content ?? this.content,
      rm: rm ?? this.rm,
      idx: idx ?? this.idx,
      categoryIdx: categoryIdx ?? this.categoryIdx,
      categoryName: categoryName ?? this.categoryName,
      categoryColor: categoryColor ?? this.categoryColor,
    );
  }

  @override
  List<Object?> get props => [
        status,
        categories,
        routines,
        routine,
        routineStartDt,
        routineEndDt,
        routineStartTime,
        cycleType,
        cycleValue,
        content,
        rm,
        idx,
        categoryIdx,
        categoryName,
        categoryColor,
      ];
}
