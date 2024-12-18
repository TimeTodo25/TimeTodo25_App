import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/ui/todo/widget/todo_achievement_time.dart';
import 'package:time_todo/ui/todo/widget/todo_done_time_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_start_time_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_date_picker.dart';
import 'package:time_todo/ui/todo/widget/todo_text_field.dart';
import '../../../repository/todo_repository.dart';
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
  void initState() {
    super.initState();
  }

  // 카테고리
  // categoryIdx: 1 / name: 할일 / color: 메인 블루
  // categoryIdx: 2 / name: 운동 / color: 메인 레드

  void addTodo() {
    // db 경로 찍어보기...
    context.read<TodoBloc>().add(
        AddTodo(
            content: _controller.text,
            idx: 0,
            categoryIdx: 0,
            userName: '승미',
        )
    );
  }

  void logDatabasePath() async {
    final path = await getDatabasesPath();
    print('Database Path: $path');
  }

  void initTodoDB() async {
    await TodoRepository.initDatabase();
  }

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
                      addTodo();
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
