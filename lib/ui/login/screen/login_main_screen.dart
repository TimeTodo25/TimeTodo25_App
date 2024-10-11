import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/buttons/button_main.dart';

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

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return Scaffold(
        body: Column(
          children: [
            ButtonMain(
                onTap: () {

                },
                buttonWidth: buttonWidth,
                titleText: "NAVER",
                textSize: 18,
                textColor: Colors.white,
                boxColor: Colors.green
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            ButtonMain(
                onTap: () {

                },
                buttonWidth: buttonWidth,
                titleText: "KAKAO",
                textSize: 18,
                textColor: Colors.black,
                boxColor: Colors.yellow
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            ButtonMain(
                onTap: () {

                },
                buttonWidth: buttonWidth,
                titleText: "다른방법으로 계속하기",
                textSize: 18,
                textColor: Colors.white,
                boxColor: mainBlue
            )
          ],
        )
    );
  }
}