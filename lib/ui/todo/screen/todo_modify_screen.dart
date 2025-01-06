import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/category_bloc.dart';
import 'package:time_todo/bloc/todo/category_state.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/ui/components/buttons/main_delete_button.dart';
import '../../../bloc/todo/category_event.dart';
import '../../../bloc/todo/todo_event.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';
import '../widget/todo_achievement_time.dart';
import '../widget/todo_date_picker_button.dart';
import '../widget/todo_done_time_picker_button.dart';
import '../widget/todo_start_time_picker_button.dart';
import '../widget/todo_text_field.dart';

class TodoModifyScreen extends StatefulWidget {
  final String tagName;
  final Color tagColor;

  const TodoModifyScreen({
    super.key,
    required this.tagColor,
    required this.tagName,
  });

  @override
  State<TodoModifyScreen> createState() => _TodoModifyScreenState();
}

class _TodoModifyScreenState extends State<TodoModifyScreen> {
  final TextEditingController _controller = TextEditingController();

  void clear() {
    context.read<TodoBloc>().add(InitTodo());
    context.read<CategoryBloc>().add(InitCategory());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 빈 화면 터치 시 키보드 내리기 위한 코드
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
            return ResponsiveCenter(
                child: Column(
              children: [
                MainAppBar(
                  title: "TODO 수정",
                  backOnTap: () {
                    clear();
                    Navigator.pop(context);
                  },
                  actionText: "완료",
                  actionOnTap: () {
                    Navigator.pop(context);
                    // TODO DB에 TODO목록 등록하는 로직 작성해야됨
                    print("todo 수정 로직 작성해야 됨");
                  },
                ),
                const SizedBox(height: 10),
                // todo textField (기존에 적었던 text 보여주기)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                    return TodoTextField(
                        tagName: state.name,
                        tagColor: state.color,
                        controller: _controller);
                  }),
                ),
                SizedBox(height: 10),
                // todo 날짜 설정
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoDatePickerButton(
                    onTap: () {},
                  ),
                ),
                // todo 시작 시간 설정 (기존에 설정한 시작 시간 보여주기)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoStartTimePickerButton(
                    onTap: () {},
                  ),
                ),
                // todo 종료 시간 설정 (기존에 설정한 종료 시간 보여주기)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoDoneTimePickerButton(
                    onTap: () {},
                  ),
                ),
                // todo 달성 시간 보여주기 (현재 달성한 시간 보여주기)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoAchievementTime(),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: MainDeleteButton(
                    onTap: () {},
                  ),
                )
              ],
            ));
          })),
    );
  }
}
