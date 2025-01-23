import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/todo/screen/circle_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/linear_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/todo_modify_screen.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class CategoryAndTodoList extends StatelessWidget {
  final int categoryItemCount;
  final Color categoryColor;
  final double maxWidth; // device 의 width 크기

  const CategoryAndTodoList(
      {super.key,
      required this.categoryItemCount,
      required this.categoryColor,
      required this.maxWidth});

  void handleScreenTransition(BuildContext context, Todo selectTodo) {
    // 시작시간, 마침시간 설정 여부에 따라 타이머 형태 분기
    if(selectTodo.startTargetDt != null && selectTodo.endTargetDt != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LinearTimerScreen(todoData: selectTodo, categoryColor: categoryColor)));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CircleTimerScreen(todoData: selectTodo, categoryColor: categoryColor)));
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isPlay = false;
    double timerMinWidth = 50; // 타이머 차지할 최소 사이즈
    double maxWidth = this.maxWidth;

    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      List<Todo> currentTodo = state.todos;

      return SizedBox(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          // 스크롤 없도록 설정
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: currentTodo.length,
          itemBuilder: (context, index) => Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                // 투두 타이틀
                Flexible(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => TodoModifyScreen(
                                  todo: currentTodo[index],
                              )),
                        );
                      },
                      child: todoTitle(
                          currentTodo[index].content,
                          categoryColor,
                          maxWidth,
                          index,
                          currentTodo[index].startTargetDt,
                          currentTodo[index].endTargetDt),
                    )),
                // 투두 타이머
                Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        handleScreenTransition(context, currentTodo[index]);
                      },
                      child: todoTimer(categoryColor, timerMinWidth, index, isPlay),
                    ))
              ]),
              AppComponents.greyDivider
            ],
          ),
        ),
      );
    });
  }
}

// 투두 타이틀
Widget todoTitle(String title, Color categoryColor, double maxWidth, int index,
    DateTime? startTime, DateTime? endTime) {
  return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: categoryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(children: [
        // 투두 텍스트 표시
        Positioned(
          child: Wrap(children: [Text(title)]),
        ),
        // 투두 시작시간 ~ 마침시간 표시
        Positioned(
            right: 0, bottom: 0, child: todoTimeStartToEnd(startTime, endTime))
      ]));
}

// 투두 시간 표시
Widget todoTimeStartToEnd(DateTime? startTime, DateTime? endTime) {
  return endTime != null
  ? Text.rich(
      TextSpan(
          children: [
            TextSpan(
              text: DateTimeUtils.formatOnlyTime(startTime),
              style: const TextStyle(fontSize: 12, color: Colors.grey)
            ),
            TextSpan(
              text: DateTimeUtils.formatTimeOnlyAMPM(startTime),
              style: const TextStyle(fontSize: 10, color: Colors.grey)
            ),
            // 구분자
            TextSpan(
                text: ' - ',
                style: const TextStyle(fontSize: 12, color: Colors.grey)
            ),
            TextSpan(
                text: DateTimeUtils.formatOnlyTime(endTime),
                style: const TextStyle(fontSize: 12, color: Colors.grey)
            ),
            TextSpan(
                text: DateTimeUtils.formatTimeOnlyAMPM(endTime),
                style: const TextStyle(fontSize: 10, color: Colors.grey)
            )
      ])
  )
  : SizedBox.shrink();
}



// 투두 타이머
Widget todoTimer(Color tagColor, double minWidth, int index, bool isPlay) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: minWidth,
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

// 투두 플레이 타임 표시
Widget todoPlayTime() {
  return Center(
      child:
          Text('48:28', style: TextStyle(fontSize: 12, color: Colors.white)));
}

// 투두 플레이 아이콘 표시
Widget todoPlayIcon() {
  return Icon(
        CupertinoIcons.play_arrow_solid,
        color: Colors.white,
        size: 16,
      );
}
