import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/repository/todo_repository.dart';

import '../../entity/todo/todo_tbl.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<FetchTodo>(_onFetchTodo);
    on<AddTodo>(_onAddTodo);
    on<UpdateTodoDate>(_onUpdateTodoDate);
    on<UpdateStartTargetDt>(_onUpdateStartTargetDt);
    on<UpdateEndTargetDt>(_onUpdateEndTargetDt);
    on<InitTodo>(_onInitTodo);
    on<ModifyTodo>(_onModifyTodo);
    on<DeleteTodo>(_onDeleteTodo);
  }

  Future<void> _onFetchTodo(FetchTodo event, Emitter<TodoState> emit) async {
    emit(state.copyWith(status: TodoStatus.loading));

    try {
      final todos = await TodoRepository.getValidTodos();

      if (todos.isEmpty) {
        emit(state.copyWith(status: TodoStatus.initial));
      } else {
        emit(state.copyWith(status: TodoStatus.loaded, todos: todos));
      }
    } catch (e) {
      emit(state.copyWith(status: TodoStatus.failure));
    }
  }

  Future<void> _onAddTodo(AddTodo event, Emitter<TodoState> emit) async {
    try {
      final newTodo = event.todo;

      if (_isValidDateRange(newTodo.startTargetDt, newTodo.endTargetDt) ==
          false) {
        emit(state.copyWith(status: TodoStatus.timeValueError));
        return;
      }

      if (newTodo.content.isEmpty) {
        emit(state.copyWith(status: TodoStatus.emptyTitleError));
        return;
      }

      await TodoRepository.insertTodo(newTodo);
      final updateTodos = [...state.todos, newTodo];

      emit(state.copyWith(
        status: TodoStatus.success,
        todos: updateTodos,
      ));
    } catch (e) {
      emit(state.copyWith(status: TodoStatus.failure));
      print("Todo 추가 저장 중 에러 발생 $e");
    }
  }

  void _onUpdateTodoDate(UpdateTodoDate event, Emitter<TodoState> emit) {
    emit(state.copyWith(todoDate: event.todoDate));
  }

  void _onUpdateStartTargetDt(UpdateStartTargetDt event,
      Emitter<TodoState> emit) {
    emit(state.copyWith(startTargetDt: event.startTargetDt));
  }

  void _onUpdateEndTargetDt(UpdateEndTargetDt event, Emitter<TodoState> emit) {
    emit(state.copyWith(endTargetDt: event.endTargetDt));
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

  void _onInitTodo(InitTodo event, Emitter<TodoState> emit) {
    emit(state.copyWith(
      status: TodoStatus.initial,
      todoDate: null,
      startTargetDt: null,
      endTargetDt: null,
    ));
  }

  Future<void> _onModifyTodo(ModifyTodo event, Emitter<TodoState> emit) async {
    try {
      final newTodo = event.newTodo;

      // 시간 유효성 검사
      if (_isValidDateRange(newTodo.startTargetDt, newTodo.endTargetDt) ==
          false) {
        emit(state.copyWith(status: TodoStatus.timeValueError));
        return;
      }

      // 내용 유효성 검사
      if (newTodo.content.isEmpty) {
        emit(state.copyWith(status: TodoStatus.emptyTitleError));
        return;
      }

      // 상태 변경
      emit(state.copyWith(status: TodoStatus.modifying));

      // DB 업데이트
      await TodoRepository.updateTodoIfChanged(newTodo);

      // 수정 후 DB에서 최신 데이터를 다시 가져오기
      final updatedTodos = await TodoRepository.getValidTodos();

      emit(state.copyWith(
        status: TodoStatus.loaded,
        todos: updatedTodos
      ));

  } catch (e) {
      emit(state.copyWith(status: TodoStatus.failure));
      print("Todo 수정 저장 중 에러 발생 $e");
    }
  }

  Future<void> _onDeleteTodo(DeleteTodo event, Emitter<TodoState> emit) async {
    try {
      await TodoRepository.deleteTodoByIndex(event.idx);
    } catch (e) {
      print("Todo 삭제 상태로 저장 중 에러 발생 $e");
    }
    emit(state.copyWith(status: TodoStatus.deleted));

    // 수정 후 DB에서 최신 데이터를 다시 가져오기
    final updatedTodos = await TodoRepository.getValidTodos();

    emit(state.copyWith(
        status: TodoStatus.loaded,
        todos: updatedTodos
    ));
  }

  // 특정 categoryIdx에 해당하는 투두 리스트 반환
  List<Todo> getTodosByCategory(int categoryIdx) {
    return state.todos.where((todo) => todo.categoryIdx == categoryIdx).toList();
  }
}
