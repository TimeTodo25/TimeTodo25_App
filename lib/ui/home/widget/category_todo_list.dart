import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/home/widget/category_todo_list_Item.dart';
import 'package:time_todo/ui/todo/screen/circle_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/linear_timer_screen.dart';

class CategoryTodoList extends StatefulWidget {
  final int categoryIdx;
  final Color categoryColor;
  final double maxWidth; // device 의 width 크기

  const CategoryTodoList(
      {super.key,
      required this.categoryColor,
      required this.maxWidth, required this.categoryIdx});

  @override
  State<CategoryTodoList> createState() => _CategoryTodoListState();
}

class _CategoryTodoListState extends State<CategoryTodoList> {
  List<Todo> todosByCategory = [];

  @override
  void initState() {
    super.initState();
    _getTodosByCategoryIdx();
  }

  void handleScreenTransition(Todo selectTodo) {
    // 시작시간, 마침시간 설정 여부에 따라 타이머 형태 분기
    if(selectTodo.startTargetDt != null && selectTodo.endTargetDt != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LinearTimerScreen(todoData: selectTodo, categoryColor: widget.categoryColor)));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CircleTimerScreen(todoData: selectTodo, categoryColor: widget.categoryColor)));
    }
  }

  void _getTodosByCategoryIdx() {
    todosByCategory = context.read<TodoBloc>().getTodosByCategory(widget.categoryIdx);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return SizedBox(
          child: ListView.builder(
        padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: todosByCategory.length,
            itemBuilder: (context, index) => CategoryTodoItem(
              todo: todosByCategory[index],
              categoryColor: widget.categoryColor,
              maxWidth: widget.maxWidth,
              onTap: () => handleScreenTransition(state.todos[index]),
            ),
          ),
        );
      },
    );
  }
}
