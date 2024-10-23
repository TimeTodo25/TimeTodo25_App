import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/main_switch.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_modify_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_setting_screen.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_list.dart';

import '../../../components/widget/main_app_bar.dart';
import 'd_day_add_screen.dart';

class DDayMainScreen extends StatefulWidget {
  const DDayMainScreen({super.key});

  @override
  State<DDayMainScreen> createState() => _DDayMainScreenState();
}

class _DDayMainScreenState extends State<DDayMainScreen> {

  // TODO 나중에 List 받아서 해야됨
  var _dDayList = <DDayList1>[
    DDayList1(title: '가', remainingDays: 10),
    DDayList1(title: '나', remainingDays: 20),
    DDayList1(title: '다', remainingDays: 30),
    DDayList1(title: '라', remainingDays: 40),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '가', remainingDays: 10),
    DDayList1(title: '나', remainingDays: 20),
    DDayList1(title: '다', remainingDays: 30),
    DDayList1(title: '라', remainingDays: 40),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '가', remainingDays: 10),
    DDayList1(title: '나', remainingDays: 20),
    DDayList1(title: '다', remainingDays: 30),
    DDayList1(title: '라', remainingDays: 40),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '가', remainingDays: 10),
    DDayList1(title: '나', remainingDays: 20),
    DDayList1(title: '다', remainingDays: 30),
    DDayList1(title: '라', remainingDays: 40),
    DDayList1(title: '마', remainingDays: 50),
    DDayList1(title: '마', remainingDays: 50),
  ];

  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    return SafeArea(
      child: ResponsiveCenter(
          child: Scaffold(
            appBar: MainAppBar(
              title: "D-day",
              backOnTap: () {
                Navigator.pop(context);
              },
              actionText: "등록",
              actionOnTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DDayAddScreen()));
              },
            ),
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              splashColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DDaySettingScreen()));
              },
              child: Icon(CupertinoIcons.settings),
            ),
            body: Column(
              children: [
                // D-Day 목록 리스트
                Expanded(
                  child: DDayList(
                    list: _dDayList,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DDayModifyScreen()));
                    },
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

// TODO 파일 어디로 해야되는지 몰라서 임시로 List 만듬
class DDayList1{
  final String title;
  final int remainingDays;

  DDayList1({
    required this.title,
    required this.remainingDays
  });

}