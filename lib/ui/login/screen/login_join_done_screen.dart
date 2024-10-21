import 'package:flutter/material.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/login/widget/join_widget.dart';

import '../../../assets/colors/color.dart';

class LoginJoinDoneScreen extends StatefulWidget {
  const LoginJoinDoneScreen({super.key});

  @override
  State<LoginJoinDoneScreen> createState() => _LoginJoinDoneScreenState();
}

class _LoginJoinDoneScreenState extends State<LoginJoinDoneScreen> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width: buttonWidth,
              margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
              child: Column(
                children: [
                  JoinWidget(title: "",imageAssets: "lib/assets/images/join_done.png",progressValue: 4,),
                  Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "‘ 김진경 ‘", // 스타일을 바꿀 부분
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontSize: 22
                              )
                          ),
                          TextSpan(
                            text: " 님 환영합니다!\n이제 로그인 후\n타임투두를 시작해볼까요?", // 나머지 텍스트
                          ),
                        ],
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontSize: 22
                        )
                    ),
                    textAlign: TextAlign.center, // 텍스트 중앙 정렬
                  ),
                  Spacer(),
                  ButtonMain(
                      onTap: () {

                      },
                      buttonWidth: buttonWidth,
                      titleText: "로그인",
                      boxColor: mainBlue,
                      textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
