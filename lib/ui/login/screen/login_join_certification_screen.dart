import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/components/inputs/input_textfield.dart';
import 'package:time_todo/ui/login/screen/login_join_user_info_screen.dart';
import 'package:time_todo/ui/login/widget/join_widget.dart';

class LoginJoinCertification extends StatefulWidget {
  const LoginJoinCertification({super.key});

  @override
  State<LoginJoinCertification> createState() => _LoginJoinCertificationState();
}

class _LoginJoinCertificationState extends State<LoginJoinCertification> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // 빈 화면 터치 시 키보드 내리기 위한 코드
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Center(
            child: Container(
              width: buttonWidth,
              margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          JoinWidget(
                            title: '이메일로 본인인증을\n완료해주세요.',
                            progressValue: 2,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: InputTextField(
                                    buttonWidth: buttonWidth,
                                    hintText: "이메일 입력"
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 10)),
                              Flexible(
                                  flex: 1,
                                  child: ButtonMain(
                                      buttonWidth: buttonWidth,
                                      titleText: "코드발송",
                                      boxColor: mainBlue,
                                      textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                                          color: Colors.white
                                      )
                                  )
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 15)),
                          InputTextField(
                              buttonWidth: buttonWidth,
                              hintText: "코드 입력"
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "코드 일치",
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontSize: 12,
                                      color: grey3
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: Icon(Icons.check, size: 20, color: grey3),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ButtonMain(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginJoinUserInfo()));
                      },
                      buttonWidth: buttonWidth,
                      titleText: "다음",
                      boxColor: mainBlue,
                      textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
