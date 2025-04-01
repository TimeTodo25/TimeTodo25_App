import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_state.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/home/widget/todo_title.dart';
import '../../../entity/todo/todo_tbl.dart';
import '../../components/widget/app_components.dart';

class CategoryTodoItem extends StatefulWidget {
  final Todo todo;
  final Color categoryColor;
  final double maxWidth;
  final VoidCallback onTap;
  final GestureDragEndCallback onHorizontalDrag;

  const CategoryTodoItem({
    super.key,
    required this.todo,
    required this.categoryColor,
    required this.maxWidth,
    required this.onTap,
    required this.onHorizontalDrag,
  });

  @override
  State<CategoryTodoItem> createState() => _CategoryTodoItemState();
}

class _CategoryTodoItemState extends State<CategoryTodoItem> {
  Color _getProgressStatusColor(int progress) {
    if (progress == 100) {
      return widget.categoryColor.withOpacity(0.5);
    } else if (progress == 50) {
      return widget.categoryColor.withOpacity(0.2);
    } else {
      return widget.categoryColor.withOpacity(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: widget.onHorizontalDrag,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              flex: 5,
              // 투두 제목
              child: BlocSelector<TodoDetailBloc, TodoDetailState, int>(
                  selector: (state) => state.progressStatus ?? widget.todo.progressStatus,
                  builder: (context, state) {
                    return TodoTitle(
                      /// 투두 수정 화면으로 이동
                      onTap: () {
                        context.router.push(TodoModifyRoute(todo: widget.todo));
                      },
                      todo: widget.todo,
                      categoryColor: _getProgressStatusColor(state),
                    );
                  }),
            ),
            // 타이머 아이콘
            Flexible(
              flex: 1,
              child: BlocSelector<AllTimerBloc, AllTimerState, int>(
                  selector: (state) {
                    int todoIdx = widget.todo.idx ?? 0;
                    return state.todoTotalTms[todoIdx] ?? 0; // totalTm
                    },
                  builder: (context, state) {
                    return GestureDetector(
                        onTap: widget.onTap,
                        child: todoTimer(
                            widget.categoryColor, state
                        ));
              }),
            )
          ]),
          AppComponents.greyDivider,
        ],
      ),
    );
  }
}

// 투두 타이머
Widget todoTimer(Color tagColor, int totalTm) {
  bool isPlay = totalTm > 0;
  return ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: 50,
      maxWidth: 50,
    ),
    child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: tagColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5),
        ),
        // 타이머 실행 시킨 적이 있다면 플레이 시간을 보여주고, 아니라면 플레이 아이콘 표시
        child: isPlay ? todoPlayTime(totalTm) : todoPlayIcon()),
  );
}

// 투두 플레이 타임 표시
Widget todoPlayTime(int totalTm) {
  final duration = Duration(seconds: totalTm);
  final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
  final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
  return Center(
    child: Text('$minutes:$seconds',
        style: TextStyle(fontSize: 12, color: Colors.white)),
  );
}

// 투두 플레이 아이콘 표시
Widget todoPlayIcon() {
  return const Icon(
    CupertinoIcons.play_arrow_solid,
    color: Colors.white,
    size: 16,
  );
}
