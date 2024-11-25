import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<Todo> _todos = [];

// TodoBloc 생성 시, 초기 상태를 지정 해준다.
  TodoBloc() : super(TodoInitial()) {

    // 투두 추가
    on<AddTodo>((event, emit) {
      _todos.add(
          Todo(
              content: event.content,
              idx: event.idx,
              categoryIdx: event.categoryIdx,
              userName: event.userName)
      );
      // 새로운 리스트로 상태 emit
      emit(TodoLoaded(todos: List.from(_todos)));
    });


  }

}