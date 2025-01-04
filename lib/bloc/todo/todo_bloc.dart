import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/repository/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<FetchTodo>(_onFetchTodo);
    on<AddTodo>(_onAddTodo);
    on<UpdateTodoDate>(_onUpdateTodoDate);
    on<UpdateStartTargetDt>(_onUpdateStartTargetDt);
    on<UpdateEndTargetDt>(_onUpdateEndTargetDt);
  }

  Future<void> _onFetchTodo(FetchTodo event, Emitter<TodoState> emit) async {
    try {
      final todos = await TodoRepository.getAllTodo();

      if (todos.isEmpty) {
        return emit(state.copyWith(status: TodoStatus.initial));
      }

      emit(state.copyWith(
          status: TodoStatus.modified, todos: [...state.todos, ...todos]));
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
}
