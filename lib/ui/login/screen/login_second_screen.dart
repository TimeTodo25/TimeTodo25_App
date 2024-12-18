import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/login/screen/login_find_id_password_screen.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/components/inputs/input_textfield.dart';
import 'package:time_todo/ui/login/screen/login_join_screen.dart';

class LoginSecond extends StatefulWidget {
  const LoginSecond({super.key});

  @override
  State<LoginSecond> createState() => _LoginSecondState();
}

class _LoginSecondState extends State<LoginSecond> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비 가져오기
    double screen = MediaQuery.of(context).size.height;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                width: screenWidth,
                child: Column(
                  children: [
                    // 뒤로가기 및 이미지
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: buttonWidth,
                      height: screen / 2.05,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 뒤로가기 padding 때메 보류
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                padding: EdgeInsets.zero,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(CupertinoIcons.back,color: grey3,),
                                )
                            ),
                          ),
                          Image.asset("lib/assets/images/login_main.png", height: 226),
                        ],
                      ),
                    ),
                    // input 및 버튼
                    Container(
                      width: buttonWidth,
                      height: screen / 3.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 20)),
                          InputTextField(
                              buttonWidth: buttonWidth,
                              hintText: "아이디"
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          InputTextField(
                              buttonWidth: buttonWidth,
                              hintText: "비밀번호"
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 15)),
                          ButtonMain(
                            buttonWidth: buttonWidth,
                            titleText: '로그인',
                            boxColor: mainBlue,
                            textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 아이디찾기 및 회원가입
                    Container(

                      width: buttonWidth,
                      height: screen / 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 14, 5, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => LoginFindIdPasswordScreen()));
                                  },
                                  child: Text(
                                    '아이디/비번 찾기',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: grey3
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => LoginJoin()));
                                  },
                                  child: Text(
                                      '회원가입',
                                      style: Theme.of(context).textTheme.bodySmall
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}
