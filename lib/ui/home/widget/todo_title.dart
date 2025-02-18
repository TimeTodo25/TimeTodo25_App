import 'package:flutter/material.dart';
import '../../../entity/todo/todo_tbl.dart';
import '../../utils/date_time_utils.dart';

class TodoTitle extends StatefulWidget {
  final Todo todo;
  final Color categoryColor;
  final VoidCallback onTap;
  const TodoTitle({super.key, required this.todo, required this.categoryColor, required this.onTap});

  @override
  State<TodoTitle> createState() => _TodoTitleState();
}

class _TodoTitleState extends State<TodoTitle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: widget.categoryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(children: [
            // 투두 텍스트 표시
            Positioned(
              child: Wrap(children: [Text(widget.todo.content)]),
            ),
            // 투두 시작시간 ~ 마침시간 표시
            Positioned(
                right: 0, bottom: 0, child: todoTimeStartToEndText(widget.todo.startTargetDt, widget.todo.endTargetDt))
          ])),
    );
  }
}


// 투두 시작시간, 마침시간 표시 텍스ㅌ
Widget todoTimeStartToEndText(DateTime? startTime, DateTime? endTime) {
  return endTime != null
  // '시작시간 - 마침시간' 표시
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
  // '시작시간' 만 표시
      : Text.rich(
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
          ]
      )
  );
}
