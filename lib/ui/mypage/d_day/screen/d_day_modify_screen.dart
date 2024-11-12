import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/buttons/main_delete_button.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';

import '../../../components/widget/main_app_bar.dart';
import '../../../components/widget/main_switch.dart';
import '../widget/d_day_date_picker.dart';
import '../widget/d_day_text_field.dart';

class DDayModifyScreen extends StatefulWidget {
  const DDayModifyScreen({super.key});

  @override
  State<DDayModifyScreen> createState() => _DDayModifyScreenState();
}

class _DDayModifyScreenState extends State<DDayModifyScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _controller = TextEditingController(text: "10k 빼버리기~!");

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
                    title: "D-day 수정",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      Navigator.pop(context);
                      // TODO DB에 D-Day목록 수정하는 로직 작성해야됨
                    },
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DDayTextField(hintText: "D-day 작성", controller: _controller,),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DDayDatePicker(),
                  ),
                  MainSwitch(
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    title: "지정일 이후 삭제",
                    onChanged: (value) {

                    },
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: MainDeleteButton(
                      onTap: () {

                      },
                    ),
                  )
                ],
              )
              )
            )
        )
    );
  }
}
