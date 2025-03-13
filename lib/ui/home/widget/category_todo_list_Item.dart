import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  bool hasTimerHistory() {
    return widget.todo.progressStatus != 0;
  }

  Color getProgressStatusColor() {
    int progress = widget.todo.progressStatus;
    if(progress == 100) {
      return widget.categoryColor.withOpacity(0.5);
    } else if(progress == 50) {
      return widget.categoryColor.withOpacity(0.2);
    } else {
      return widget.categoryColor.withOpacity(0);
    }
  }

  // TimerRepository 에서

  // 이 투두 idx 와 일치하는 timer 값이 있는지 확인
  // 있으면 true, 없으면 false
  // bool _hasTimerHistory(int todoIdx) {
  //   return context.read<CircleTimerBloc>().hasTimerHistoryByIdx(todoIdx);
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onPanEnd: widget.onPan, // 스와이프
      onHorizontalDragEnd: widget.onHorizontalDrag,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                  // 투두 제목
                  child: TodoTitle(
                    // 투두 수정 화면으로 이동
                    onTap: () {
                      context.router.push(TodoModifyRoute(todo: widget.todo));
                    },
                    todo: widget.todo,
                    categoryColor: getProgressStatusColor(),
                  ),
                ),
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: widget.onTap,
                  child: todoTimer(widget.categoryColor, hasTimerHistory()),
                ),
              ),
            ],
          ),
          AppComponents.greyDivider,
        ],
      ),
    );
  }
}

// 투두 타이머
Widget todoTimer(Color tagColor, bool isPlay) {
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
        child: isPlay ? todoPlayTime() : todoPlayIcon()),
  );
}

/// 투두 플레이 타임 표시
/// 반영 해야 됨
Widget todoPlayTime() {
  return Center(
      child:
      Text('48:28', style: TextStyle(fontSize: 12, color: Colors.white)));
}

// 투두 플레이 아이콘 표시
Widget todoPlayIcon() {
  return const Icon(
    CupertinoIcons.play_arrow_solid,
    color: Colors.white,
    size: 16,
  );
}
