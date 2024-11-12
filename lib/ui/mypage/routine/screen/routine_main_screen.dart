import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_list.dart';

import '../../../components/widget/main_app_bar.dart';

class RoutineMainScreen extends StatefulWidget {
  const RoutineMainScreen({super.key});

  @override
  State<RoutineMainScreen> createState() => _RoutineMainScreenState();
}



class _RoutineMainScreenState extends State<RoutineMainScreen> {

  // 화면 크기
  late double deviceWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {

    List<RoutineList> routineList = [
      RoutineList(tagName: "운동", tagColor: mainBlue, tagItemCount: 3, maxWidth: deviceWidth),
      RoutineList(tagName: "취미", tagColor: mainBlue, tagItemCount: 2, maxWidth: deviceWidth),
      RoutineList(tagName: "공부", tagColor: mainBlue, tagItemCount: 3, maxWidth: deviceWidth),
      RoutineList(tagName: "개인적으로 할 일", tagColor: mainBlue, tagItemCount: 4, maxWidth: deviceWidth),
    ];

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ResponsiveCenter(
              child: Column(
                children: [
                  MainAppBar(
                    title: "루틴",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 10),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            itemCount: routineList.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  routineList[index],
                                  SizedBox(height: 20,)
                                ],
                              );
                            },
                          )
                      )
                  )
                ],
              )
          ),
        )
    );
  }
}
