import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';

import '../../repository/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
// TodoBloc 생성 시, 초기 상태를 지정 해준다.
  TodoBloc() : super(TodoInitial()) {
    // 투두 추가
    on<AddTodo>((event, emit) async {
      final newTodo = Todo(
          content: event.content,
          idx: event.idx,
          categoryIdx: event.categoryIdx,
          userName: event.userName
      );

      // DB에 저장
      await TodoRepository.insertTodo(newTodo);

      // DB에 저장된 투두 목록 가져오기
      final todoList = await TodoRepository.getAllTodo();
      // 새로운 리스트로 상태 emit
      emit(TodoLoaded(todos: todoList));
    });

    // 투두 목록 조회
    on<GetTodo>((event, emit) async {
      try {
        final allTodos = await TodoRepository.getAllTodo();
        emit(TodoLoaded(todos: allTodos));
      } catch (e) {
        emit(TodoError());
      }
    });
  }
}