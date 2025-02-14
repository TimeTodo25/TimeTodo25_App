import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_event.dart';
import 'package:time_todo/bloc/d_day/d_day_state.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';
import 'package:time_todo/repository/d_day_repository.dart';

class DdayBloc extends Bloc<DdayEvent, DdayState> {
  DdayBloc() : super(DdayState()) {
    on<DdayEvent>((event, emit) async {
      await event.when(
        getDdayListEvent: () async {
          emit(state.copyWith(status: DdayStatus.loading));
          try {
            final dDays = await DdayRepository.getDdayList();
            emit(state.copyWith(
              status: DdayStatus.loaded,
              dDays: dDays,
            ));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 리스트 조회 오류: ${e.toString()}');
          }
        },
        // 디데이 상세 조회
        getDdayDetailEvent: (int idx) async {
          emit(state.copyWith(status: DdayStatus.loading, idx: idx));
          try {
            final dDay = await DdayRepository.getDdayDetail(idx);
            emit(state.copyWith(
                idx: idx,
                status: DdayStatus.loaded,
                dDays: state.dDays,
                dDay: dDay,
                dDayDate: dDay!.targetDt,
                targetDelStatus: dDay.targetDelStatus,
                content: dDay.content));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 상세 조회 오류: ${e.toString()}');
          }
        },
        // 디데이 지정일 업데이트
        updateDdayDateEvent: (dDayDate) async {
          emit(state.copyWith(dDayDate: dDayDate));
        },
        // 디데이 내용 변경
        updateDdayContentEvent: (dDayContent) async {
          emit(state.copyWith(content: dDayContent));
        },
        // 디데이 지정일 이후 삭제 여부 변경
        updateTargetDelStatusEvent: (targetDelStatus) async {
          final targetDelStatusVal = targetDelStatus ? 'Y' : 'N';
          emit(state.copyWith(targetDelStatus: targetDelStatusVal));
        },
        // 디데이 등록
        createDdayEvent: (dday) async {
          emit(state.copyWith(status: DdayStatus.creating));
          try {
            final newDday = await DdayRepository.insertDday(dday);
            if (newDday != null) {
              final newDdays = List<Dday>.from(state.dDays)..add(newDday);
              emit(state.copyWith(
                  status: DdayStatus.success, dDays: newDdays, dDay: dday));
            } else {
              emit(state.copyWith(status: DdayStatus.failure));
              print('디데이 등록 안됌: ${newDday.toString()}');
            }
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 등록 오류: ${e.toString()}');
          }
        },
        // 디데이 수정
        updateDdayEvent: (dday) async {
          emit(state.copyWith(status: DdayStatus.updating));
          try {
            await DdayRepository.updateDday(dday);
            final updateDdays = state.dDays.map((item) {
              return item.idx == dday.idx ? dday : item;
            }).toList();
            emit(state.copyWith(
              status: DdayStatus.success,
              dDays: updateDdays,
            ));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 수정 오류: ${e.toString()}');
          }
        },
        // 디데이 삭제
        deleteDdayEvent: (idx) async {
          emit(state.copyWith(status: DdayStatus.deleting));
          try {
            await DdayRepository.deleteDday(idx);
            final updateDdays =
                state.dDays.where((item) => item.idx != idx).toList();
            emit(state.copyWith(
              status: DdayStatus.success,
              dDays: updateDdays,
            ));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 삭제 오류: ${e.toString()}');
          }
        },
        // 디데이 상세 초기화
        cleanDdayDetailEvent: () async {
          emit(state.copyWith(
            dDay: null,
            idx: null,
            targetDelStatus: null,
            content: null,
            dDayDate: null,
          ));
        },
      );
    });
  }
}
