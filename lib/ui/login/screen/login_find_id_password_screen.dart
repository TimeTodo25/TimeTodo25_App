import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/find_id_password_state.dart';
import 'package:time_todo/ui/login/screen/login_find_id_success_screen.dart';

import '../../components/inputs/input_textfield.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';
import '../widget/login_button_widget.dart';
import 'login_join_user_info_screen.dart';

class LoginFindIdPasswordScreen extends StatefulWidget {
  const LoginFindIdPasswordScreen({super.key});

  @override
  State<LoginFindIdPasswordScreen> createState() => _LoginFindIdPasswordScreenState();
}

class _LoginFindIdPasswordScreenState extends State<LoginFindIdPasswordScreen> {

  bool showFirstWidget = true;
  bool showFirstPasswordWidget = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FindIdBloc()),
        BlocProvider(create: (context) => FindPasswordBloc())
      ],
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus(); // 키보드 닫기
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            body: ResponsiveCenter(
              child: Column(
                children: [
                  MainAppBar(
                    title: "",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Expanded(
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: mainBlue,
                            unselectedLabelColor: grey3,
                            tabs: [
                              Tab(text: "아이디 찾기"),
                              Tab(text: "비밀번호 찾기"),
                            ],
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: mainBlue,
                            labelStyle: Theme.of(context).textTheme.titleSmall,
                            unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                BlocBuilder<FindIdBloc, FindIdState>(
                                  builder: (context, state) {
                                    if (state is FindIdInitialState) {
                                      return loginFindIdFirstWidget(
                                        buttonWidth: buttonWidth,
                                        onNext: () {
                                          context.read<FindIdBloc>().add(FindIdNextEvent());
                                        },
                                      );
                                    } else if (state is FindIdSecondState) {
                                      return loginFindIdSuccessWidget(buttonWidth: buttonWidth);
                                    }  else {
                                      return Center(child: Text("오류 발생"));
                                    }
                                  },
                                ),
                                BlocBuilder<FindPasswordBloc, FindPasswordState>(
                                  builder: (context, state) {
                                    if (state is FindPasswordInitialState) {
                                      return loginFindPasswordFirstWidget(
                                        buttonWidth: buttonWidth,
                                        onNext: () {
                                          context.read<FindPasswordBloc>().add(FindPasswordNextEvent());
                                        },
                                      );
                                    } else if (state is FindPasswordSecondState) {
                                      return loginFindPasswordSecondWidget(
                                        buttonWidth: buttonWidth,
                                        onNext: () {
                                          context.read<FindPasswordBloc>().add(FindPasswordNextEvent());
                                        },
                                      );
                                    } else if (state is FindPasswordThirdState) {
                                      return loginFindPasswordThirdWidget(buttonWidth: buttonWidth);
                                    }
                                    else {
                                      return Center(child: Text("오류 발생"));
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

class loginFindPasswordFirstWidget extends StatelessWidget {

  const loginFindPasswordFirstWidget({
    super.key,
    required this.buttonWidth,
    required this.onNext
  });

  final double buttonWidth;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
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
          Spacer(),
          ButtonMain(
              onTap: () {
                onNext();
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
    );
  }

}

class loginFindPasswordSecondWidget extends StatelessWidget {

  const loginFindPasswordSecondWidget({
    super.key,
    required this.buttonWidth,
    required this.onNext
  });

  final double buttonWidth;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          InputTextField(
              buttonWidth: buttonWidth,
              hintText: "아이디 입력"
          ),
          Spacer(),
          ButtonMain(
              onTap: () {
                onNext();
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
    );
  }

}

class loginFindPasswordThirdWidget extends StatelessWidget {

  const loginFindPasswordThirdWidget({
    super.key,
    required this.buttonWidth,
  });

  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          Text(
            "비민번호 재설정",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontSize: 20
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
          Spacer(),
          ButtonMain(
              onTap: () {

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
    );
  }

}

class loginFindIdFirstWidget extends StatelessWidget {

  const loginFindIdFirstWidget({
    super.key,
    required this.buttonWidth,
    required this.onNext
  });

  final double buttonWidth;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
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
          Spacer(),
          ButtonMain(
              onTap: () {
                onNext();
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
    );
  }

}

class loginFindIdSuccessWidget extends StatelessWidget {

  const loginFindIdSuccessWidget({
    super.key,
    required this.buttonWidth
  });

  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          Icon(CupertinoIcons.check_mark_circled_solid,size: 50,color: Color(0xFF2CE793)),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "회원 정보와 일치하는 아이디 입니다.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  "qwer1234",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 20
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.exclamationmark_circle,size: 13,color: grey3,),
                    Text(
                      "정보 보호를 위해 아이디의 일부만 보여집니다.가려지지 않은\n전체 아이디는 로그인 후 확인할 수 있습니다.",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          ButtonMain(
              onTap: () {

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
    );
  }
}

class loginFindIdFailWidget extends StatelessWidget{

  const loginFindIdFailWidget({
    super.key,
    required this.buttonWidth
  });

  final double buttonWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          Icon(CupertinoIcons.clear_circled_solid,size: 50,color: mainRed),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "회원 정보와 일치하는 아이디가 없습니다.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonMain(
              onTap: () {

              },
              buttonWidth: buttonWidth,
              titleText: "홈으로 돌아가기",
              boxColor: mainBlue,
              textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white
              )
          ),
        ],
      ),
    );
  }

}

class loginFindPasswordFailInfoWidget extends StatelessWidget{

  const loginFindPasswordFailInfoWidget({
    super.key,
    required this.buttonWidth
  });

  final double buttonWidth;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          Icon(CupertinoIcons.clear_circled_solid,size: 50,color: mainRed),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "회원 정보가 존재하지 않습니다.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonMain(
              onTap: () {

              },
              buttonWidth: buttonWidth,
              titleText: "홈으로 돌아가기",
              boxColor: mainBlue,
              textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white
              )
          ),
        ],
      ),
    );
  }

}

class loginFindPasswordSuccessWidget extends StatelessWidget{

  const loginFindPasswordSuccessWidget({
    super.key,
    required this.buttonWidth
  });

  final double buttonWidth;


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        children: [
          Icon(CupertinoIcons.check_mark_circled_solid,size: 50,color: Color(0xFF2CE793)),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "비밀번호가 수정되었습니다.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonMain(
              onTap: () {

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
    );
  }

}