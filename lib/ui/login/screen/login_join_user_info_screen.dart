import 'package:flutter/material.dart';
import 'package:time_todo/ui/login/screen/login_join_done_screen.dart';

import '../../../assets/colors/color.dart';
import '../widget/login_button_widget.dart';
import '../../components/inputs/input_textfield.dart';
import '../widget/join_widget.dart';

class LoginJoinUserInfo extends StatefulWidget {
  const LoginJoinUserInfo({super.key});

  @override
  State<LoginJoinUserInfo> createState() => _LoginJoinUserInfoState();
}

class _LoginJoinUserInfoState extends State<LoginJoinUserInfo> {
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
                              title: '타임투두에서 이용하실\n회원 정보를 입력해주세요.',
                              progressValue: 3,
                            ),
                            InputTextField(
                                buttonWidth: buttonWidth,
                                hintText: "닉네임 입력"
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15)),
                            Row(
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: InputTextField(
                                      buttonWidth: buttonWidth,
                                      hintText: "아이디 입력"
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 10)),
                                Flexible(
                                    flex: 1,
                                    child: ButtonMain(
                                        buttonWidth: buttonWidth,
                                        titleText: "중복확인",
                                        boxColor: mainBlue,
                                        textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                                            color: Colors.white
                                        )
                                    )
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "중복 확인",
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
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            InputTextField(
                                buttonWidth: buttonWidth,
                                hintText: "비밀번호 입력"
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "영문포함",
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            fontSize: 12,
                                            color: grey3
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(3, 0, 15, 0),
                                        child: Icon(Icons.check, size: 20, color: grey3),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "숫자포함",
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            fontSize: 12,
                                            color: grey3
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(3, 0, 15, 0),
                                        child: Icon(Icons.check, size: 20, color: grey3),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "8-20자 이내",
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
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            InputTextField(
                                buttonWidth: buttonWidth,
                                hintText: "비밀번호 재입력"
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 0, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "비밀번호 일치",
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
                              MaterialPageRoute(builder: (context) => LoginJoinDoneScreen()));
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
