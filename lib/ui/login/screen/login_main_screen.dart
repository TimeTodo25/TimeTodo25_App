import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/login/screen/login_second_screen.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비 가져오기
    double screen = MediaQuery.of(context).size.height;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;
    // 로그인 회원가입 화면 회전 안되게
    return Scaffold(
        body: Center(
          child: Container(
              width: buttonWidth,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 뒤로가기 및 이미지
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.only(top: 20),
                        width: buttonWidth,
                        height: screen / 2.05,
                        child: // 뒤로가기 padding 때메 보류
                        Image.asset("lib/assets/images/login_main.png", height: 226),
                      ),
                      Container(
                        height: screen / 3.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                            // 버튼들
                            ButtonMain(
                                onTap: () {},
                                buttonWidth: buttonWidth,
                                titleText: "NAVER",
                                boxColor: Color(0xFF04C75B), // 네이버 버튼 색상
                                textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Colors.white
                                )
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            ButtonMain(
                              onTap: () {},
                              buttonWidth: buttonWidth,
                              titleText: "KAKAO",
                              boxColor: Color(0xFFFAE100),
                              textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Color(0xFF3C1D1E)
                              ),// 카카오 버튼 색상
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            ButtonMain(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginSecond()));
                              },
                              buttonWidth: buttonWidth,
                              titleText: "다른방법으로 계속하기",
                              boxColor: mainBlue,
                              textStyle: Theme.of(context).textTheme.labelLarge,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: buttonWidth,
                        height: screen / 8,
                        padding: EdgeInsets.symmetric(vertical: 10.5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            onTap: () {
                              // 비회원으로 시작하기 버튼 클릭 시 동작
                              // 홈화면으로 이동
                            },
                            child: Text(
                                "비회원으로 시작하기",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: grey3,
                                    fontSize: 12
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Spacer를 사용하지 않고 Align으로 하단 버튼 배치
                ],
              )
          ),
        )
    );
  }
}