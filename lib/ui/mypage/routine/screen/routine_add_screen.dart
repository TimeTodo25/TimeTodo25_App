import 'package:flutter/material.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_done_date_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_repeat_cycle_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_start_date_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_start_time_picker.dart';

import '../../../../components/widget/responsive_center.dart';
import '../../../components/widget/main_app_bar.dart';
import '../widget/routine_text_field.dart';

class RoutineAddScreen extends StatefulWidget {

  final String tagName;
  final Color tagColor;

  const RoutineAddScreen({
    super.key,
    required this.tagColor,
    required this.tagName,
  });

  @override
  State<RoutineAddScreen> createState() => _RoutineAddScreenState();
}

class _RoutineAddScreenState extends State<RoutineAddScreen> {

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
                    title: "루틴 등록",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      Navigator.pop(context);
                      // TODO DB에 루틴 등록하는 로직 작성해야됨
                    },
                  ),
                  SizedBox(height: 10),
                  // 루틴 textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineTextField(tagName: widget.tagName, tagColor: widget.tagColor, controller: _controller),
                  ),
                  SizedBox(height: 10),
                  // 루틴 시작일 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineStartDatePicker()
                  ),
                  // 루틴 종료일 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineDoneDatePicker(),
                  ),
                  // 루틴 시작 시간 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineStartTimePicker(),
                  ),
                  // 루틴 반복 주기 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineRepeatCyclePicker(),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
