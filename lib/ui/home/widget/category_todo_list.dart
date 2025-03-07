import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/home/widget/category_todo_list_Item.dart';
import 'package:time_todo/ui/todo/screen/circle_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/linear_timer_screen.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class CategoryTodoList extends StatefulWidget {
  final int categoryIdx;
  final Color categoryColor;
  final List<Todo> categoryTodos;
  final double maxWidth; // device 의 width 크기

  const CategoryTodoList({
    super.key,
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
      /// 일자 타이머 화면으로 이동
      context.router.push(LinearTimerRoute(todoData: selectTodo, categoryColor: widget.categoryColor));
    } else {
      /// 원형 타이머 화면으로 이동
      context.router.push(CircleTimerRoute(todoData: selectTodo, categoryColor: widget.categoryColor));
    }
  }

  // 'todoDate'와 '타이머 실행 날짜'가 일치하지 않는 경우,
  // 기존 투두를 복사하여 타이머 실행 날짜로 새로운 투두를 생성한다.
  // 타이머 기록은 새로운 투두에 저장한다.
  // 캘린더에 표시되는 달성률은 타이머 날짜를 기준으로 한다.
  void compareTodoDateAndTimerDate(Todo selectTodo) {
    DateTime todoDate = DateTimeUtils.extractDateOnly(selectTodo.todoDate);
    DateTime timerDate = DateTimeUtils.extractDateOnly(DateTime.now());

    if (todoDate.isAtSameMomentAs(timerDate) == false) {
      copyTodo(selectTodo);
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
          onTap: () {
            handleScreenTransition(widget.categoryTodos[index]);
            compareTodoDateAndTimerDate(widget.categoryTodos[index]);
          },
        ),
      ),
    );
  }

  void copyTodo(Todo todo) {
    DateTime now = DateTime.now();
    DateTime? startDt;
    DateTime? endDt;

    if (todo.startTargetDt != null) {
      startDt = DateTimeUtils.combineDateAndTime(now, todo.startTargetDt);
    }
    if (todo.endTargetDt != null) {
      endDt = DateTimeUtils.combineDateAndTime(now, todo.endTargetDt);
    }

    final newTodo = todo.copyWith(
      idx: null,
      progressStatus: 0,
      todoDate: now,
      createDt: now,
      updateDt: null,
      deleteDt: null,
      syncIdx: null,
      syncCategoryIdx: null,
      syncDt: null,
      syncStatus: 'P',
      startTargetDt: startDt,
      endTargetDt: endDt,
    );

    context.read<TodoDetailBloc>().add(AddTodo(newTodo));
  }
}
