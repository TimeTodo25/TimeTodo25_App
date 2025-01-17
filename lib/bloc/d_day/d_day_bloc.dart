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
            emit(state.copyWith(status: DdayStatus.loaded, dDays: dDays));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 리스트 조회 오류: ${e.toString()}');
          }
        },
        getDdayDetailEvent: (idx) async {
          emit(state.copyWith(status: DdayStatus.loading));
          try {
            final dDay = await DdayRepository.getDdayDetail(idx);
            emit(state.copyWith(
                status: DdayStatus.loaded, dDays: state.dDays, dDay: dDay));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 상세 조회 오류: ${e.toString()}');
          }
        },
        createDdayEvent: (dday) async {
          emit(state.copyWith(status: DdayStatus.creating));
          try {
            await DdayRepository.insertDday(dday);
            final dDays = List<Dday>.from(state.dDays)..add(dday);
            emit(state.copyWith(
                status: DdayStatus.success, dDays: dDays, dDay: dday));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 등록 오류: ${e.toString()}');
          }
        },
        updateDdayEvent: (dday) async {
          emit(state.copyWith(status: DdayStatus.updating));
          try {
            await DdayRepository.updateDday(dday);
            final updateDdays = state.dDays.map((item) {
              return item.idx == dday.idx ? dday : item;
            }).toList();
            emit(state.copyWith(
                status: DdayStatus.success, dDays: updateDdays, dDay: dday));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 수정 오류: ${e.toString()}');
          }
        },
        deleteDdayEvent: (idx) async {
          emit(state.copyWith(status: DdayStatus.deleting));
          try {
            await DdayRepository.deleteDday(idx);
            final updateDdays =
                state.dDays.where((item) => item.idx != idx).toList();
            emit(state.copyWith(
                status: DdayStatus.success, dDays: updateDdays, dDay: null));
          } catch (e) {
            emit(state.copyWith(status: DdayStatus.failure));
            print('디데이 삭제 오류: ${e.toString()}');
          }
        },
      );
    });
  }
}
