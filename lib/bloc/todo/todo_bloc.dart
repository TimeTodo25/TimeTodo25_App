import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';

import '../../repository/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {

    on<AddTodo>(_onAddTodo);
    on<GetTodo>(_onGetTodo);
  }

  void _onAddTodo(AddTodo event, Emitter<TodoState> emit) async {
    final newTodo = Todo(
              content: event.content,
              idx: event.idx,
              categoryIdx: event.categoryIdx,
              userName: event.userName);
          await TodoRepository.insertTodo(newTodo);
          final todoList = await TodoRepository.getAllTodo();

    emit(TodoLoaded(todos: todoList));
  }

  void _onGetTodo(GetTodo event, Emitter<TodoState> emit) async {
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
  }
}
