import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/entity/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/todo/screen/todo_modify_screen.dart';

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
      if (state is TodoLoaded) {
        // 상태값 일치하면 TodoList 가져오기
        List<Todo> currentTodo = state.todos;
        return SizedBox(
          // 가변 리스트 생성
          child: ListView.builder(
            padding: EdgeInsets.zero,
            // 스크롤 없도록 설정
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tagItemCount,
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
                          child:
                              InkWell(
                                onTap: () {
                                  print("todotimer $todoTimer" );
                                },
                                child: todoTimer(
                                    tagColor,
                                    timerMinWidth,
                                    index,
                                    isPlay
                                ),
                              )
                      )
                    ]),
                AppComponents.greyDivider
              ],
            ),
          ),
        );
      } else {
        return Center(child: Text("data가 없습니다"));
      }
    });
  }
}

// 투두 타이틀
Widget todoTitle(String title, Color tagColor, double maxWidth, int index,
    DateTime? startTime, DateTime? endTime) {
  return Stack(alignment: AlignmentDirectional.centerStart, children: [
    Row(
      children: [
        // 타이틀 텍스트 왼쪽 여백
        SizedBox(width: 4),
        // 타이틀 텍스트
        Text(
          // 12글자 넘어가면 초과된 글자는 ...으로 표시
          title.length > 12 ? '${title.substring(0, 12)}...' : title,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(width: 4),
        // 시작 시간
        Text(startTime != null
            ? '$startTime ~ '
            : '',
            style: TextStyle(fontSize: 10, color: Colors.grey)),
        // 마침 시간
        Text(endTime != null
            ? '$endTime'
            : "",
            style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    ),
    Container(
        height: 27,
        decoration: BoxDecoration(
          color: tagColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        )),
  ]);
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
  return GestureDetector(
      onTap: () {},
      child: Icon(
        CupertinoIcons.play_arrow_solid,
        color: Colors.white,
        size: 16,
      ));
}
