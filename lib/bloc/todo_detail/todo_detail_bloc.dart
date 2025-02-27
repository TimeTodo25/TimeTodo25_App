import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';

import '../../repository/todo_repository.dart';

class TodoDetailBloc extends Bloc<TodoDetailEvent, TodoDetailState> {
  TodoDetailBloc() : super(const TodoDetailState()) {
    on<AddTodo>(_onAddTodo);
    on<ModifyTodo>(_onModifyTodo);
    on<DeleteTodo>(_onDeleteTodo);
    on<UpdateTodoDate>(_onUpdateTodoDate);
    on<UpdateStartTargetDt>(_onUpdateStartTargetDt);
    on<UpdateEndTargetDt>(_onUpdateEndTargetDt);
    on<InitTodo>(_onInitTodo);
    on<GetCategoryIdx>(_onGetCategoryIdx);
  }

  Future<void> _onAddTodo(AddTodo event, Emitter<TodoDetailState> emit) async {
    try {
      final newTodo = event.todo;

      if (_isValidDateRange(newTodo.startTargetDt, newTodo.endTargetDt) ==
          false) {
        emit(state.copyWith(status: TodoDetailStatus.timeValueError));
        return;
      }

      if (newTodo.content.isEmpty) {
        emit(state.copyWith(status: TodoDetailStatus.emptyTitleError));
        return;
      }

      await TodoRepository.insertTodo(newTodo);
      emit(state.copyWith(status: TodoDetailStatus.done));
    } catch (e) {
      emit(state.copyWith(status: TodoDetailStatus.error));
      print("Todo 추가 저장 중 에러 발생 $e");
    }
  }


  Future<void> _onModifyTodo(ModifyTodo event, Emitter<TodoDetailState> emit) async {

    // 상태 변경
    emit(state.copyWith(status: TodoDetailStatus.modifying));

    try {
      final newTodo = event.newTodo;

      // 시간 유효성 검사
      if (_isValidDateRange(newTodo.startTargetDt, newTodo.endTargetDt) ==
          false) {
        emit(state.copyWith(status: TodoDetailStatus.timeValueError));
        return;
      }

      // 내용 유효성 검사
      if (newTodo.content.isEmpty) {
        emit(state.copyWith(status: TodoDetailStatus.emptyTitleError));
        return;
      }


      // DB 업데이트
      await TodoRepository.updateTodoIfChanged(newTodo);

      emit(state.copyWith(status: TodoDetailStatus.done));

    } catch (e) {
      emit(state.copyWith(status: TodoDetailStatus.error));
      print("Todo 수정 저장 중 에러 발생 $e");
    }
  }



  Future<void> _onDeleteTodo(DeleteTodo event, Emitter<TodoDetailState> emit) async {
    try {
      await TodoRepository.deleteTodoByIndex(event.idx);
    } catch (e) {
      print("Todo 삭제 상태로 저장 중 에러 발생 $e");
    }
    emit(state.copyWith(status: TodoDetailStatus.deleted));
  }


  bool _isValidDateRange(DateTime? start, DateTime? end) {
    if (start == null && end == null) {
      return true;
    }
    if (start == null && end != null) {
      return false;
    }
    if (start != null && end != null) {
      return start.isBefore(end);
    }
    return true;
  }

  void _onUpdateTodoDate(UpdateTodoDate event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(todoDate: event.todoDate));
  }

  void _onUpdateStartTargetDt(UpdateStartTargetDt event,
      Emitter<TodoDetailState> emit) {
    emit(state.copyWith(startTargetDt: event.startTargetDt));
  }

  void _onUpdateEndTargetDt(UpdateEndTargetDt event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(endTargetDt: event.endTargetDt));
  }

  void _onInitTodo(InitTodo event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(
      status: TodoDetailStatus.initial,
      todoDate: null,
      startTargetDt: null,
      endTargetDt: null,
      categoryIdx: null
    ));
  }

  void _onGetCategoryIdx(GetCategoryIdx event, Emitter<TodoDetailState> emit) {
    emit(state.copyWith(
      status: TodoDetailStatus.initial,
        categoryIdx: event.categoryIdx
    ));
  }
}
