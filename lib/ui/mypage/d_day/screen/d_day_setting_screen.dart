import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/main_switch.dart';

import '../../../components/widget/main_app_bar.dart';

class DDaySettingScreen extends StatefulWidget {
  const DDaySettingScreen({super.key});

  @override
  State<DDaySettingScreen> createState() => _DDaySettingScreenState();
}

class _DDaySettingScreenState extends State<DDaySettingScreen> {
  @override
  Widget build(BuildContext context) {

    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;
    
    return SafeArea(
        child: Scaffold(
          appBar: MainAppBar(
            title: "D-day 설정",
            backOnTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: buttonWidth,
              child: Column(
                children: [
                  MainSwitch(
                      title: "등록한 순으로 정렬",
                      onChanged: (value) {

                      }
                  ),
                  MainSwitch(
                      title: "완료된 D-day 뒤로 정렬",
                      onChanged: (value) {

                      }
                  ),
                  MainSwitch(
                      title: "스와이프로 체크",
                      onChanged: (value) {

                      }
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
