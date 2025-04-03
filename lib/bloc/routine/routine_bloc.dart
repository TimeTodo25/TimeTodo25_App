import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/routine/routine_event.dart';
import 'package:time_todo/bloc/routine/routine_state.dart';
import 'package:time_todo/entity/routine/routine_tbl.dart';
import 'package:time_todo/repository/routine_repository.dart';

class RoutineBloc extends Bloc<RoutineEvent, RoutineState> {
  RoutineBloc() : super(RoutineState()) {
    final routineRepo = RoutineRepository();

    on<RoutineEvent>((event, emit) async {
      await event.when(
        // 루틴 리스트 조회
        getRoutineListEvent: () async {
          emit(state.copyWith(status: RoutineStatus.initial));
          try {
            final routines = await routineRepo.getRoutineList();
            print("routines??????: ${routines}");
            emit(state.copyWith(
              status: RoutineStatus.loaded,
              routines: routines,
            ));
          } catch (e) {
            emit(state.copyWith(status: RoutineStatus.failure));
            print('루틴 리스트 조회 오류: ${e.toString()}');
          }
        },
        // 카테고리 리스트 조회
        getCategoryListEvent: () async {
          emit(state.copyWith(status: RoutineStatus.initial));
          try {
            final categories = await routineRepo.getCategoryList();
            emit(state.copyWith(
              status: RoutineStatus.loaded,
              categories: categories,
            ));
          } catch (e) {
            emit(state.copyWith(status: RoutineStatus.failure));
            print('카테고리 리스트 조회 오류: ${e.toString()}');
          }
        },
        // 루틴 추가 페이지 이동
        routineAddPageEvent:
            (int categoryIdx, String categoryName, String categoryColor) async {
          emit(state.copyWith(
              status: RoutineStatus.loading,
              categoryIdx: categoryIdx,
              categoryName: categoryName,
              categoryColor: categoryColor));
        },
        // 루틴 시작날짜 업데이트
        updateRoutineStartDateEvent: (routineStartDate) async {
          emit(state.copyWith(routineStartDt: routineStartDate));
        },
        // 루틴 종료날짜 업데이트
        updateRoutineDoneDateEvent: (routineDoneDate) async {
          emit(state.copyWith(routineEndDt: routineDoneDate));
        },
        // 루틴 시작시간 업데이트
        updateRoutineStartTimeEvent: (routineStartTime) async {
          emit(state.copyWith(routineStartTime: routineStartTime));
        },
        // 디데이 상세 조회
        getRoutineDetailEvent: (int idx) async {
          emit(state.copyWith(status: RoutineStatus.loading, idx: idx));
          try {
            final routine = await routineRepo.getRoutineDetail(idx);
            emit(state.copyWith(
                idx: idx,
                status: RoutineStatus.loaded,
                routines: state.routines,
                routine: routine,
                routineStartDt: routine!.startDt,
                routineEndDt: routine!.endDt,
                content: routine.content));
          } catch (e) {
            emit(state.copyWith(status: RoutineStatus.failure));
            print('디데이 상세 조회 오류: ${e.toString()}');
          }
        },
        // 디데이 내용 변경
        updateRoutineContentEvent: (routineContent) async {
          emit(state.copyWith(content: routineContent));
        },
        // 디데이 지정일 이후 삭제 여부 변경
        updateTargetDelStatusEvent: (targetDelStatus) async {
          final targetDelStatusVal = targetDelStatus ? 'Y' : 'N';
          // emit(state.copyWith(targetDelStatus: targetDelStatusVal));
        },
        // 디데이 등록
        createRoutineEvent: (routine) async {
          // emit(state.copyWith(status: RoutineStatus.creating));
          // try {
          //   final newRoutine = await RoutineRepository.insertRoutine(routine);
          //   if (newRoutine != null) {
          //     final newRoutines = List<Routine>.from(state.routines)
          //       ..add(newRoutine);
          //     emit(state.copyWith(
          //         status: RoutineStatus.success,
          //         routines: newRoutines,
          //         routine: routine));
          //   } else {
          //     emit(state.copyWith(status: RoutineStatus.failure));
          //     print('디데이 등록 안됌: ${newRoutine.toString()}');
          //   }
          // } catch (e) {
          //   emit(state.copyWith(status: RoutineStatus.failure));
          //   print('디데이 등록 오류: ${e.toString()}');
          // }
        },
        // 디데이 수정
        updateRoutineEvent: (routine) async {
          // emit(state.copyWith(status: RoutineStatus.updating));
          // try {
          //   await RoutineRepository.updateRoutine(routine);
          //   final updateRoutines = state.routines.map((item) {
          //     return item.idx == routine.idx ? routine : item;
          //   }).toList();
          //   emit(state.copyWith(
          //     status: RoutineStatus.success,
          //     routines: updateRoutines,
          //   ));
          // } catch (e) {
          //   emit(state.copyWith(status: RoutineStatus.failure));
          //   print('디데이 수정 오류: ${e.toString()}');
          // }
        },
        // 디데이 삭제
        deleteRoutineEvent: (idx) async {
          emit(state.copyWith(status: RoutineStatus.deleting));
          try {
            await routineRepo.deleteRoutine(idx);
            final updateRoutines =
                state.routines.where((item) => item.idx != idx).toList();
            emit(state.copyWith(
              status: RoutineStatus.success,
              routines: updateRoutines,
            ));
          } catch (e) {
            emit(state.copyWith(status: RoutineStatus.failure));
            print('디데이 삭제 오류: ${e.toString()}');
          }
        },
        // 디데이 상세 초기화
        cleanRoutineDetailEvent: () async {
          // emit(state.copyWith(
          //   routine: null,
          //   idx: null,
          //   targetDelStatus: null,
          //   content: null,
          //   routineDate: null,
          // ));
        },
      );
    });
  }
}
