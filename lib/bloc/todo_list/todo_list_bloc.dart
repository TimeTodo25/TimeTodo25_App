import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/bloc/todo_list/todo_list_state.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/repository/todo_repository.dart';


class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(const TodoListState()) {
    on<FetchTodos>(_onFetchTodoList);
    on<GetTodosByMonth>(_getTodosByDateAndProgress);
    on<GetTodosByCategory>(_getCategoryTodos);
  }

  Future<void> _onFetchTodoList(FetchTodos event, Emitter<TodoListState> emit) async {
    emit(state.copyWith(status: TodoListStatus.loading));

    try {
      final todos = await TodoRepository.getValidTodos();

      if (todos.isEmpty) {
        emit(state.copyWith(status: TodoListStatus.initial));
      } else {
        emit(state.copyWith(status: TodoListStatus.loaded, todos: todos));
      }
    } catch (e) {
      emit(state.copyWith(status: TodoListStatus.failure));
    }
  }

  Future<void> _getCategoryTodos(GetTodosByCategory event, Emitter<TodoListState> emit) async {
    emit(state.copyWith(status: TodoListStatus.loading));

    try {
      // DB에서 해당 카테고리의 투두 리스트 가져오기
      final todos = await TodoRepository.getTodosByCategoryIdx(event.categoryIdx);

      // 기존 상태에서 Map 복사 후, 현재 카테고리의 투두 업데이트
      final updatedCategoryTodos = Map<int, List<Todo>>.from(state.categoryTodos);
      updatedCategoryTodos[event.categoryIdx] = todos;

      // 상태 갱신
      emit(state.copyWith(
        categoryTodos: updatedCategoryTodos,
        status: TodoListStatus.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(status: TodoListStatus.failure));
    }
  }

  // 특정 날짜에 달성도가 0이 아닌 투두 리스트 가져오기
  Future<void> _getTodosByDateAndProgress(GetTodosByMonth event, Emitter<TodoListState> emit) async {
    emit(state.copyWith(status: TodoListStatus.loading));

    try {
      final todos = await TodoRepository.getValidProgressStatusTodosByMonth(event.date);
      emit(state.copyWith(todos: todos, status: TodoListStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: TodoListStatus.failure));
    }
  }
}
