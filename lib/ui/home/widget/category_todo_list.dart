import 'package:flutter/material.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/home/widget/category_todo_list_Item.dart';
import 'package:time_todo/ui/todo/screen/circle_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/linear_timer_screen.dart';

class CategoryTodoList extends StatefulWidget {
  final int categoryIdx;
  final Color categoryColor;
  final List<Todo> categoryTodos;
  final double maxWidth; // device 의 width 크기

  const CategoryTodoList(
      {super.key,
        required this.categoryIdx,
        required this.categoryColor,
      required this.categoryTodos,
        required this.maxWidth,
      });

  @override
  State<CategoryTodoList> createState() => _CategoryTodoListState();
}

class _CategoryTodoListState extends State<CategoryTodoList> {
  @override
  void initState() {
    super.initState();
  }

  void handleScreenTransition(Todo selectTodo) {
    // 시작시간, 마침시간 설정 여부에 따라 타이머 형태 분기
    if (selectTodo.startTargetDt != null && selectTodo.endTargetDt != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LinearTimerScreen(
                  todoData: selectTodo, categoryColor: widget.categoryColor)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CircleTimerScreen(
                  todoData: selectTodo, categoryColor: widget.categoryColor)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.categoryTodos.length,
        itemBuilder: (context, index) => CategoryTodoItem(
          todo: widget.categoryTodos[index],
          categoryColor: widget.categoryColor,
          maxWidth: widget.maxWidth,
          onTap: () => handleScreenTransition(widget.categoryTodos[index]),
        ),
      ),
    );
  }
}
