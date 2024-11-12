import 'package:flutter/material.dart';
import 'package:time_todo/ui/todo/widget/todo_achievement_time.dart';
import 'package:time_todo/ui/todo/widget/todo_done_time_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_start_time_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_date_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_text_field.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';

class TodoAddScreen extends StatefulWidget {

  final String tagName;
  final Color tagColor;

  const TodoAddScreen({
    super.key,
    required this.tagColor,
    required this.tagName,
  });

  @override
  State<TodoAddScreen> createState() => _TodoAddScreenState();
}

class _TodoAddScreenState extends State<TodoAddScreen> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // 빈 화면 터치 시 키보드 내리기 위한 코드
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ResponsiveCenter(
              child: Column(
                children: [
                  MainAppBar(
                    title: "TODO등록",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      Navigator.pop(context);
                      // TODO DB에 TODO목록 등록하는 로직 작성해야됨
                    },
                  ),
                  SizedBox(height: 10),
                  // todo textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TodoTextField(tagName: widget.tagName, tagColor: widget.tagColor, controller: _controller),
                  ),
                  SizedBox(height: 10),
                  // todo 날짜 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TodoDatePicker(),
                  ),
                  // todo 시작 시간 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TodoStartTimePicker(),
                  ),
                  // todo 종료 시간 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TodoDoneTimePicker(),
                  ),
                  // todo 달성 시간 보여주기
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TodoAchievementTime(),
                  ),
                ],
              ),
          )
        ),
      ),
    );
  }
}
