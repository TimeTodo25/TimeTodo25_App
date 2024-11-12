import 'package:flutter/material.dart';
import '../../../../assets/colors/color.dart';
import '../../../../components/widget/responsive_center.dart';
import '../../../components/buttons/main_delete_button.dart';
import '../../../components/widget/main_app_bar.dart';
import '../widget/routine_done_date_picker.dart';
import '../widget/routine_repeat_cycle_picker.dart';
import '../widget/routine_start_date_picker.dart';
import '../widget/routine_start_time_picker.dart';
import '../widget/routine_text_field.dart';

class RoutineModifyScreen extends StatefulWidget {

  final String tagName;
  final Color tagColor;
  final String title;

  const RoutineModifyScreen({
    super.key,
    required this.tagColor,
    required this.tagName,
    required this.title
  });

  @override
  State<RoutineModifyScreen> createState() => _RoutineModifyScreenState();
}

class _RoutineModifyScreenState extends State<RoutineModifyScreen> {

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.title);
  }

  // Divider와 간격 추가 함수
  Widget buildDivider() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(height: 1, color: grey1),
    );
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
                    title: "루틴 수정",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      Navigator.pop(context);
                      // TODO DB에 루틴 수정하는 로직 작성해야됨
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
                  // 디바이더 설정
                  buildDivider(),
                  // 루틴 반복 주기 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineRepeatCyclePicker(),
                  ),
                  Spacer(),
                  // 삭제 버튼
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: MainDeleteButton(
                      onTap: () {

                      },
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
