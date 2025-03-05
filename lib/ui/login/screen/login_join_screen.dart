import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/join/join_bloc.dart';
import 'package:time_todo/bloc/join/join_event.dart';
import 'package:time_todo/bloc/join/join_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/login/widget/login_button_widget.dart';
import 'package:time_todo/ui/login/widget/join_widget.dart';

@RoutePage(name: 'LoginJoinRoute')
class LoginJoin extends StatefulWidget {
  const LoginJoin({super.key});

  @override
  State<LoginJoin> createState() => _LoginJoinState();
}

class _LoginJoinState extends State<LoginJoin> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    double screen = MediaQuery.of(context).size.height;
    print("height : ${screen}");

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    void termCheck(type, isAgreed) {
      switch (type) {
        case 'all':
          context.read<JoinBloc>().add(JoinEvent.allAgreeTermEvent(!isAgreed));
        case 'service':
          context.read<JoinBloc>().add(JoinEvent.serviceTermEvent(!isAgreed));
        case 'collection':
          context
              .read<JoinBloc>()
              .add(JoinEvent.collectionTermEvent(!isAgreed));
        case 'marketing':
          context.read<JoinBloc>().add(JoinEvent.marketingTermEvent(!isAgreed));
      }
      context.read<JoinBloc>().add(JoinEvent.termCompletEvent());
    }

    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
        width: buttonWidth,
        margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
        child: BlocBuilder<JoinBloc, JoinState>(builder: (context, state) {
          return Column(
            children: [
              JoinWidget(
                title: '타임 투두 서비스 이용약관에\n동의해주세요.',
                progressValue: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          termCheck('all', state.allAgreeTerm);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: state.allAgreeTerm ? mainBlue : Colors.white,
                            border: Border.all(
                                color: state.allAgreeTerm
                                    ? mainBlue
                                    : Colors.grey), // 테두리 색상
                          ),
                          child: state.allAgreeTerm
                              ? Icon(Icons.check,
                                  size: 20,
                                  color: Colors.white) // true일 때 파란 체크
                              : Icon(Icons.check,
                                  size: 20,
                                  color: Colors.grey), // false일 때 회색 체크
                        ),
                      ),
                      Text(
                        "모두 동의(선택 정보 포함)",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        height: 1,
                        color: grey1,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              termCheck('service', state.serviceTerm);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              width: 25,
                              height: 25,

                              child: state.serviceTerm
                                  ? Icon(Icons.check,
                                      size: 20,
                                      color: mainBlue) // true일 때 파란 체크
                                  : Icon(Icons.check,
                                      size: 20,
                                      color: Colors.grey), // false일 때 회색 체크
                            ),
                          ),
                          Text(
                            "이용약관 동의 (필수)",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text("보기",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: grey3, fontSize: 12)),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              termCheck(
                                  'collection', state.collectionTerm); // 상태 변경
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              width: 25,
                              height: 25,

                              child: state.collectionTerm
                                  ? Icon(Icons.check,
                                      size: 20,
                                      color: mainBlue) // true일 때 파란 체크
                                  : Icon(Icons.check,
                                      size: 20,
                                      color: Colors.grey), // false일 때 회색 체크
                            ),
                          ),
                          Text(
                            "개인정보 수집 및 이용에 동의 (필수)",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text("보기",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: grey3, fontSize: 12)),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              termCheck('marketing', state.marketingTerm);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              width: 25,
                              height: 25,

                              child: state.marketingTerm
                                  ? Icon(Icons.check,
                                      size: 20,
                                      color: mainBlue) // true일 때 파란 체크
                                  : Icon(Icons.check,
                                      size: 20,
                                      color: Colors.grey), // false일 때 회색 체크
                            ),
                          ),
                          Text(
                            "광고 및 마케팅 수신에 동의 (선택)",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text("보기",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: grey3, fontSize: 12)),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              ButtonMain(
                  onTap: () {
                    if (state.status == JoinStatus.termSuccess) {
                      context.router.push(LoginJoinCertificationRoute());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginJoinCertification()));
                    }
                  },
                  buttonWidth: buttonWidth,
                  titleText: "다음",
                  boxColor: state.status == JoinStatus.termSuccess ||
                          (state.serviceTerm && state.collectionTerm)
                      ? mainBlue
                      : grey2,
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white))
            ],
          );
        }),
      ),
    )));
  }
}
