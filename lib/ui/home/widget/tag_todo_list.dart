import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class TagTodoList extends StatelessWidget {
  final int tagItemCount;
  final Color tagColor;
  final double maxWidth; // device 의 width 크기

  const TagTodoList(
      {super.key,
      required this.tagItemCount,
      required this.tagColor,
      required this.maxWidth});

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
                        print("flexible");
                      },
                      child: todoTitle(
                          currentTodo[index].content,
                          tagColor,
                          maxWidth,
                          index,
                          currentTodo[index].startTargetDt,
                          currentTodo[index].endTargetDt),
                    )),
                // 투두 타이머
                Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        print("todotimer $todoTimer");
                      },
                      child: todoTimer(tagColor, timerMinWidth, index, isPlay),
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
Widget todoTitle(String title, Color tagColor, double maxWidth, int index,
    DateTime? startTime, DateTime? endTime) {
  return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: tagColor.withOpacity(0.2),
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
