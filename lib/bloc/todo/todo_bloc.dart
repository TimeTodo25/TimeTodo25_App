import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';

import '../../repository/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    // 투두 추가
    on<AddTodo>((event, emit) async {
      final newTodo = Todo(
          content: event.content,
          idx: event.idx,
          categoryIdx: event.categoryIdx,
          userName: event.userName);

      await TodoRepository.insertTodo(newTodo);
      final todoList = await TodoRepository.getAllTodo();
      emit(TodoLoaded(todos: todoList));
    });

    on<GetTodo>((event, emit) async {
      try {
        final todos = await TodoRepository.getAllTodo();

        if(todos.isEmpty) {
          emit(TodoEmpty());
        } else {
          emit(TodoLoaded(todos: todos));
        }
      } catch (e) {
        emit(TodoError());
      }
    });
  }
}
