import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/main_switch.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_date_picker.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_text_field.dart';

import '../../../components/widget/main_app_bar.dart';

class DDayAddScreen extends StatefulWidget {
  const DDayAddScreen({super.key});

  @override
  State<DDayAddScreen> createState() => _DDayAddScreenState();
}

class _DDayAddScreenState extends State<DDayAddScreen> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    TextEditingController _controller = TextEditingController();

    return SafeArea(
        child: GestureDetector(
          onTap: () {
            // 빈 화면 터치 시 키보드 내리기 위한 코드
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: MainAppBar(
              title: "D-day 등록",
              backOnTap: () {
                Navigator.pop(context);
              },
              actionText: "완료",
              actionOnTap: () {
                Navigator.pop(context);
                // TODO DB에 D-Day목록 등록하는 로직 작성해야됨
              },
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: buttonWidth,
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    DDayTextField(hintText: "D-day 작성", controller: _controller),
                    SizedBox(height: 10),
                    DDayDatePicker(),
                    MainSwitch(
                      textStyle: Theme.of(context).textTheme.labelSmall,
                      title: "지정일 이후 삭제",
                      onChanged: (value) {

                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
