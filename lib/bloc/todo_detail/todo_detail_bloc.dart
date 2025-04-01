import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/api/todo_api.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';
import 'package:time_todo/dio/api_dio_client.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/model/todo/request/todo_create_request.dart';
import 'package:time_todo/model/todo/request/todo_update_request.dart';
import 'package:time_todo/model/todo/response/todo_create_response.dart';
import 'package:time_todo/model/todo/response/todo_update_response.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

import '../../repository/todo_repository.dart';

class TodoDetailBloc extends Bloc<TodoDetailEvent, TodoDetailState> {
  late TodoRepository _todoRepo;
  late TodoApi _api;

  TodoDetailBloc() : super(const TodoDetailState()) {
    _api = TodoApi(ApiClient.dio);
    _todoRepo = TodoRepository();

    on<AddTodo>(_onAddTodo);
    on<CopyTodo>(_onAddCopyTodo);
    on<ModifyTodo>(_onModifyTodo);
    on<DeleteTodo>(_onDeleteTodo);
    on<UpdateTodoDate>(_onUpdateTodoDate);
    on<UpdateStartTargetDt>(_onUpdateStartTargetDt);
    on<UpdateEndTargetDt>(_onUpdateEndTargetDt);
    on<InitTodo>(_onInitTodo);
    on<GetCategoryIdx>(_onGetCategoryIdx);
    on<UpdateOnlyProgress>(_onUpdateOnlyProgressStatus);
    on<ResetStatus>(_onResetStatus);
  }

  Future<void> _saveToLocal(Todo newTodo) async {
    try {
      await _todoRepo.insertTodo(newTodo);
    } catch (e) {
      print("❌ 로컬 저장 실패: $e");
      throw Exception("로컬 저장 오류");
    }
  }

  Future<TodoCreateResponse> _saveToServer(Todo newTodo) async {
    try {
      final request = TodoCreateRequest.fromTodo(newTodo);
      return await _api.todoCreate(request);
    } catch (e) {
      print("❌ 서버 동기화 실패: $e");
      throw Exception("서버 동기화 오류");
    }
  }

  Future<void> _updateToLocal(Todo newTodo) async {
    try {
      await _todoRepo.updateTodoIfChanged(newTodo);
    } catch (e) {
      print("❌ 로컬 업데이트 실패: $e");
      throw Exception("로컬 업데이트 오류");
    }
  }

  Future<TodoUpdateResponse> _updateToServer(Todo newTodo) async {
    try {
      final request = TodoUpdateRequest.fromTodo(newTodo);
      return await _api.todoUpdate(request);
    } catch (e) {
      print("❌ 서버 동기화 실패: $e");
      throw Exception("서버 동기화 오류");
    }
  }

  Future<void> _deleteToServer(int idx) async {
    try {
      await _api.todoDelete(idx);
    } catch (e) {
      print("❌ 서버 삭제 실패: $e");
      throw Exception("서버 동기화 오류");
    }
  }

  Future<void> _deleteToLocal(int idx) async {
    try {
      await _todoRepo.deleteTodoByIndex(idx);
    } catch (e) {
      print("❌ 로컬 삭제 실패: $e");
      throw Exception("로컬 삭제 오류");
    }
  }

  Future<void> _onAddTodo(AddTodo event, Emitter<TodoDetailState> emit) async {
    emit(state.copyWith(status: TodoDetailStatus.initial, lastAddedTodo: null));

    try {
      final newTodo = event.todo;
      if (!_validateTodo(newTodo, emit)) return;

      final response = await _saveToServer(newTodo); // 서버 저장

      // 서버에서 받은 ID를 로컬에 저장
      final syncTodo = newTodo.copyWith(
          syncIdx: response.todoIdx, syncDt: response.updateDt
      );

      await _saveToLocal(syncTodo);

      emit(state.copyWith(status: TodoDetailStatus.added));
    } catch (e) {
      emit(state.copyWith(status: TodoDetailStatus.error));
      print("Todo 추가 저장 중 에러 발생 $e");
    }
  }

  // TodoDate 지난 후에 타이머를 실행 시켰을 경우, 동일한 내용의 투두를 타이머 실행 날짜로 복사 및 추가하는 메서드
  Future<void> _onAddCopyTodo(CopyTodo event, Emitter<TodoDetailState> emit) async {
    emit(state.copyWith(status: TodoDetailStatus.initial));

    try {
      final newTodo = event.todo;
      if (!_validateTodo(newTodo, emit)) return;

      final response = await _saveToServer(newTodo); // 서버 저장
      final syncTodo = newTodo.copyWith(
          syncIdx: response.todoIdx, syncDt: response.updateDt
      );

      await _saveToLocal(syncTodo); // 로컬 저장

      emit(state.copyWith(
        status: TodoDetailStatus.added,
        lastAddedTodo: syncTodo,
      ));
    } catch (e) {
      emit(state.copyWith(status: TodoDetailStatus.error));
      print("Todo 추가 저장 중 에러 발생 $e");
    }
  }

  Future<void> _onModifyTodo(ModifyTodo event, Emitter<TodoDetailState> emit) async {
    try {
      final newTodo = event.newTodo;
      if (!_validateTodo(newTodo, emit)) return;

      final response = await _updateToServer(newTodo); // 서버 저장
      final syncTodo = newTodo.copyWith(
        syncDt: response.updateDt,
      );
      await _updateToLocal(syncTodo); // 로컬 저장

      emit(state.copyWith(status: TodoDetailStatus.updated));
    } catch (e) {
      emit(state.copyWith(status: TodoDetailStatus.error));
      print("Todo 수정 저장 중 에러 발생 $e");
    }
  }

  Future<void> _onDeleteTodo(DeleteTodo event, Emitter<TodoDetailState> emit) async {
    try {
      await _deleteToServer(event.syncIdx);
      await _deleteToLocal(event.idx);

      emit(state.copyWith(status: TodoDetailStatus.deleted));
    } catch (e) {
      print("Todo 삭제 상태로 저장 중 에러 발생 $e");
    }
  }

  bool _isValidDateRange(DateTime? start, DateTime? end) {
    if (start == null && end == null) {
      return true;
    }
    if (start == null && end != null) {
      return false;
    }
    if (start != null && end != null) {
      // 초단위 제외 비교
      final startDt = DateTimeUtils.extractDateTimeWithoutSeconds(start);
      final endDt = DateTimeUtils.extractDateTimeWithoutSeconds(end);
      return startDt.isBefore(endDt);
    }
    return true;
  }

  void _onUpdateTodoDate(UpdateTodoDate event, Emitter<TodoDetailState> emit) {
    DateTime nowTime = DateTime.now();

    // event.todoDate의 연월일을 유지하고, 시간은 현재 시간으로 설정
    if (event.todoDate != null) {
      DateTime updatedDate = DateTime(
        event.todoDate!.year,
        event.todoDate!.month,
        event.todoDate!.day,
        nowTime.hour,
        nowTime.minute,
        nowTime.second,
      );

      emit(state.copyWith(todoDate: updatedDate));
    }
  }

  void _onUpdateStartTargetDt(UpdateStartTargetDt event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(startTargetDt: event.startTargetDt));
  }

  void _onUpdateEndTargetDt(UpdateEndTargetDt event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(
        status: TodoDetailStatus.initial, endTargetDt: event.endTargetDt));
  }

  void _onInitTodo(InitTodo event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(
        status: TodoDetailStatus.initial,
        todoDate: null,
        startTargetDt: null,
        endTargetDt: null,
        categoryIdx: null,
        lastAddedTodo: null));
  }

  void _onGetCategoryIdx(GetCategoryIdx event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(
        status: TodoDetailStatus.initial, categoryIdx: event.categoryIdx));
  }

  void _onUpdateOnlyProgressStatus(
      UpdateOnlyProgress event, Emitter<TodoDetailState> emit) async {
    int idx = event.todo.idx ?? 0;
    int currentProgress = event.todo.progressStatus;
    int updateProgress = 0;

    switch (currentProgress) {
      case 0:
        updateProgress = 50;
        await _todoRepo.updateOnlyProgressStatusByIdx(idx, updateProgress);
        emit(state.copyWith(status: TodoDetailStatus.updated));
      case 50:
        updateProgress = 100;
        await _todoRepo.updateOnlyProgressStatusByIdx(idx, updateProgress);
        emit(state.copyWith(status: TodoDetailStatus.updated));
      case 100:
        updateProgress = 0;
        await _todoRepo.updateOnlyProgressStatusByIdx(idx, updateProgress);
        emit(state.copyWith(status: TodoDetailStatus.updated));
    }
  }

  void _onResetStatus(ResetStatus event, Emitter<TodoDetailState> emit) {
    state.copyWith(status: TodoDetailStatus.initial);
  }

  // 투두 유효성 검사
  bool _validateTodo(Todo newTodo, Emitter<TodoDetailState> emit) {
    if (!_isValidDateRange(newTodo.startTargetDt, newTodo.endTargetDt)) {
      emit(state.copyWith(status: TodoDetailStatus.timeValueError));
      return false;
    }
    if (newTodo.content.isEmpty) {
      emit(state.copyWith(status: TodoDetailStatus.emptyTitleError));
      return false;
    }
    return true;
  }
}
