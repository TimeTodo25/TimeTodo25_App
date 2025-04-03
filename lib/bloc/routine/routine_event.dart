import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';
import 'package:time_todo/entity/routine/routine_tbl.dart';

part 'routine_event.freezed.dart';

@freezed
class RoutineEvent with _$RoutineEvent {
  // 루틴 리스트 조회
  const factory RoutineEvent.getRoutineListEvent() = _GetRoutineListEvent;

  // 카테고리 리스트 조회
  const factory RoutineEvent.getCategoryListEvent() = _GetCategoryListEvent;

  // 루틴 추가 페이지 이동
  const factory RoutineEvent.routineAddPageEvent(
      int tagIdx, String tagName, String tagColor) = _RoutineAddPageEvent;

  // 루틴 시작날짜 업데이트
  const factory RoutineEvent.updateRoutineStartDateEvent(DateTime value) =
      _UpdateRoutineStartDateEvent;

  // 루틴 종료날짜 업데이트
  const factory RoutineEvent.updateRoutineDoneDateEvent(DateTime value) =
      _UpdateRoutineDoneDateEvent;

  // 루틴 시작시간 업데이트
  const factory RoutineEvent.updateRoutineStartTimeEvent(TimeOfDay value) =
      _UpdateRoutineStartTimeEvent;

  // 디데이 상세 조회
  const factory RoutineEvent.getRoutineDetailEvent(int idx) =
      _GetRoutineDetailEvent;

  // 디데이 내용 변경
  const factory RoutineEvent.updateRoutineContentEvent(String dDayContent) =
      _UpdateRoutineContentEvent;

  // 디데이 지정일 이후 삭제 여부 변경
  const factory RoutineEvent.updateTargetDelStatusEvent(bool targetDelStatus) =
      _UpdateTargetDelStatusEvent;

  // 디데이 등록
  const factory RoutineEvent.createRoutineEvent(Dday dday) =
      _CreateRoutineEvent;

  // 디데이 수정
  const factory RoutineEvent.updateRoutineEvent(Dday dday) =
      _UpdateRoutineEvent;

  // 디데이 삭제
  const factory RoutineEvent.deleteRoutineEvent(int idx) = _DeleteRoutineEvent;

  // 디데이 상세 초기화
  const factory RoutineEvent.cleanRoutineDetailEvent() =
      _CleanRoutineDetailEvent;
}
