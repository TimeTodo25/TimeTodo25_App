import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/join/join_bloc.dart';
import 'package:time_todo/bloc/join/join_event.dart';
import 'package:time_todo/bloc/join/join_state.dart';
import 'package:time_todo/model/user/user.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/login/screen/login_join_done_screen.dart';
import 'package:time_todo/ui/login/widget/join_snackbar.dart';

import '../../../assets/colors/color.dart';
import '../widget/login_button_widget.dart';
import '../../components/inputs/input_textfield.dart';
import '../widget/join_widget.dart';

@RoutePage(name: 'LoginJoinUserInfoRoute')
class LoginJoinUserInfo extends StatefulWidget {
  const LoginJoinUserInfo({super.key});

  @override
  State<LoginJoinUserInfo> createState() => _LoginJoinUserInfoState();
}

class _LoginJoinUserInfoState extends State<LoginJoinUserInfo> {
  // bool _userInfoCheckBool = false;
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _pwCheckController = TextEditingController();

  // 아이디 중복 확인 버튼 터치 시
  void idOverlapCheck() {
    context
        .read<JoinBloc>()
        .add(JoinEvent.idOverlapCheckEvent(_idController.text));
  }

  // 최하단 다음 버튼 터시 시 벨리데이션 후 페이지 이동
  void userInfoCheck() {
    // _userInfoCheckBool = true;
    // 모든 필수 조건이 충족되었는지 확인
    if (_nicknameController.text.isEmpty) {
      // 닉네임이 비어있을 경우
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('닉네임을 입력해주세요')),
      );
      return;
    }

    if (!context.read<JoinBloc>().state.idCheck) {
      // 아이디 중복 확인이 되지 않은 경우
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('아이디 중복 확인을 해주세요')),
      );
      return;
    }

    if (!context.read<JoinBloc>().state.pwEngVal ||
        !context.read<JoinBloc>().state.pwNumberVal ||
        !context.read<JoinBloc>().state.pwLengthVal) {
      // 비밀번호 조건이 충족되지 않은 경우
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('비밀번호 조건을 확인해주세요')),
      );
      return;
    }

    if (!context.read<JoinBloc>().state.pwCheck) {
      // 비밀번호 확인이 일치하지 않는 경우
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('비밀번호가 일치하지 않습니다')),
      );
      return;
    }

    final user = User(
      id: _idController.text,
      password: _pwController.text,
      email: context.read<JoinBloc>().state.email ?? '',
      nickname: _nicknameController.text,
    );

    context.read<JoinBloc>().add(JoinEvent.joinUserEvent(user));
  }

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
              child: BlocListener<JoinBloc, JoinState>(
                listener: (context, state) {
                  if (state.status == JoinStatus.failure) {
                    joinSnackBar(
                      context: context,
                      message: '잘못된 회원 정보입니다. \n 수정 후 다시 시도해 주세요.',
                    );
                  } else if (state.status == JoinStatus.success) {
                    // 모든 조건이 충족되면 다음 페이지로 이동
                    context.router.push(LoginJoinDoneRoute());
                  }
                },
                child:
                    BlocBuilder<JoinBloc, JoinState>(builder: (context, state) {
                  return Column(
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
                                // borderRed:
                                //     _userInfoCheckBool && state.nickName == null
                                //         ? true
                                //         : false,
                                controller: _nicknameController,
                                buttonWidth: buttonWidth,
                                hintText: "닉네임 입력",
                                onChanged: (value) {
                                  context.read<JoinBloc>().add(
                                      JoinEvent.validationCheck(
                                          'nickName', value));
                                },
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 15)),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: InputTextField(
                                      controller: _idController,
                                      buttonWidth: buttonWidth,
                                      hintText: "아이디 입력",
                                      onChanged: (value) {
                                        // _userInfoCheckBool = false;
                                        context
                                            .read<JoinBloc>()
                                            .add(changeUserIdEvent(value));
                                      },
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(right: 10)),
                                  Flexible(
                                    flex: 1,
                                    child: ButtonMain(
                                      buttonWidth: buttonWidth,
                                      titleText: "중복확인",
                                      boxColor: mainBlue,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(color: Colors.white),
                                      onTap: () {
                                        idOverlapCheck();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "중복 확인",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              fontSize: 12,
                                              color: state.idCheck
                                                  ? mainBlue
                                                  : grey3),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                      child: Icon(Icons.check,
                                          size: 20,
                                          color:
                                              state.idCheck ? mainBlue : grey3),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              InputTextField(
                                controller: _pwController,
                                buttonWidth: buttonWidth,
                                hintText: "비밀번호 입력",
                                obscureText: true,
                                onChanged: (value) {
                                  context.read<JoinBloc>().add(
                                      JoinEvent.validationCheck('pw', value));
                                },
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "영문포함",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: state.pwEngVal
                                                    ? mainBlue
                                                    : grey3,
                                              ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(3, 0, 15, 0),
                                          child: Icon(Icons.check,
                                              size: 20,
                                              color: state.pwEngVal
                                                  ? mainBlue
                                                  : grey3),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "숫자포함",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: state.pwNumberVal
                                                    ? mainBlue
                                                    : grey3,
                                              ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(3, 0, 15, 0),
                                          child: Icon(Icons.check,
                                              size: 20,
                                              color: state.pwNumberVal
                                                  ? mainBlue
                                                  : grey3),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "8-20자 이내",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: state.pwLengthVal
                                                    ? mainBlue
                                                    : grey3,
                                              ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(3, 0, 0, 0),
                                          child: Icon(Icons.check,
                                              size: 20,
                                              color: state.pwLengthVal
                                                  ? mainBlue
                                                  : grey3),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              InputTextField(
                                controller: _pwCheckController,
                                obscureText: true,
                                buttonWidth: buttonWidth,
                                hintText: "비밀번호 재입력",
                                onChanged: (value) {
                                  context.read<JoinBloc>().add(
                                      JoinEvent.validationCheck(
                                          'pwCheck', value));
                                },
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 0, 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "비밀번호 일치",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              fontSize: 12,
                                              color: state.pwCheck
                                                  ? mainBlue
                                                  : grey3),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                      child: Icon(Icons.check,
                                          size: 20,
                                          color:
                                              state.pwCheck ? mainBlue : grey3),
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
                            userInfoCheck();
                          },
                          buttonWidth: buttonWidth,
                          titleText: "다음",
                          boxColor: state.idCheck &&
                                  // state.nickName != null &&
                                  _nicknameController.text != '' &&
                                  state.pwEngVal &&
                                  state.pwNumberVal &&
                                  state.pwLengthVal &&
                                  state.pwCheck
                              ? mainBlue
                              : grey1,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.white)),
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
