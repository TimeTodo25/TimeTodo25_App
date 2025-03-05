import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/join/join_bloc.dart';
import 'package:time_todo/bloc/join/join_event.dart';
import 'package:time_todo/bloc/join/join_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/login/widget/join_snackbar.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/components/inputs/input_textfield.dart';
import 'package:time_todo/ui/login/widget/join_widget.dart';

@RoutePage(name: 'LoginJoinCertificationRoute')
class LoginJoinCertification extends StatefulWidget {
  const LoginJoinCertification({super.key});

  @override
  State<LoginJoinCertification> createState() => _LoginJoinCertificationState();
}

class _LoginJoinCertificationState extends State<LoginJoinCertification> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  // 인증 코드 메일 전송 함수
  void sendCodeEmail() {
    joinSnackBar(context: context, message: '코드가 발송되었습니다. \n 메일을 확인해 주세요.');
    String email = _emailController.text;
    context.read<JoinBloc>().add(JoinEvent.sendCertificationMailEvent(email));
  }

  void codeCheck() {
    String email = _emailController.text;
    String code = _codeController.text;
    context.read<JoinBloc>().add(JoinEvent.certifyCodeEvent(email, code));
  }

  void codeCheckFail() {
    context.read<JoinBloc>().add(JoinEvent.codeFailEvent());
  }

  @override
  Widget build(BuildContext context) {
    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    // void sendMail() {
    //   context.read<JoinBloc, JoinState>().add(
    //                                   JoinEvent.sendCertificationMailEvent(
    //                                       email));
    // }

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
              listenWhen: (previous, current) =>
                  previous.status != current.status &&
                  ModalRoute.of(context)?.isCurrent == true,
              listener: (context, state) {
                if (state.status == JoinStatus.codeSuccess) {
                  context.router.push(LoginJoinUserInfoRoute());
                } else if (state.status == JoinStatus.failure) {
                  _codeController.clear();
                  joinSnackBar(
                    context: context,
                    message: '인증 코드가 일치하지 않습니다. \n 다시 시도해 주세요.',
                  );
                  codeCheckFail();
                } else if (state.status == JoinStatus.timerOver) {
                  _codeController.clear();
                  joinSnackBar(
                    context: context,
                    message: '인증 시간이 지났습니다. \n 다시 시도해 주세요.',
                  );
                }
              },
              child: BlocBuilder<JoinBloc, JoinState>(
                builder: (context, state) {
                  return Column(
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
                                      controller: _emailController,
                                      buttonWidth: buttonWidth,
                                      hintText: "이메일 입력",
                                      onChanged: (value) {
                                        context.read<JoinBloc>().add(
                                              JoinEvent.validationCheck(
                                                  'email', value),
                                            );
                                      },
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(right: 10)),
                                  Flexible(
                                    flex: 1,
                                    child: ButtonMain(
                                      buttonWidth: buttonWidth,
                                      titleText:
                                          state.status == JoinStatus.sendMail &&
                                                  state.timerVal != '00:00'
                                              ? state.timerVal.toString()
                                              : "코드발송",
                                      boxColor:
                                          state.emailVal ? mainBlue : grey2,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(color: Colors.white),
                                      onTap: () {
                                        if (state.status !=
                                            JoinStatus.sendMail) {
                                          sendCodeEmail();
                                        }
                                        // 코드 발송 로직 추가
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 15)),
                              InputTextField(
                                controller: _codeController,
                                buttonWidth: buttonWidth,
                                hintText: "코드 입력",
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ButtonMain(
                          onTap: () {
                            codeCheck();
                            // if (state.status == JoinStatus.codeSuccess) {
                            //   context.router.push(LoginJoinUserInfoRoute());
                            // } else if (state.status == JoinStatus.failure) {
                            //   _codeController.text = '';
                            //   Fluttertoast.showToast(
                            //     msg: "인증 코드가 일치하지 않습니다",
                            //     toastLength: Toast.LENGTH_SHORT,
                            //     gravity: ToastGravity.BOTTOM,
                            //     backgroundColor: Colors.red,
                            //     textColor: Colors.white,

                            //   );
                            // }
                          },
                          buttonWidth: buttonWidth,
                          titleText: "다음",
                          boxColor: state.status == JoinStatus.sendMail &&
                                  _codeController.text.isNotEmpty
                              ? mainBlue
                              : grey2,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.white)),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
