import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/home/home_main.dart';
import 'package:time_todo/ui/mypage/mypage_main.dart';
import 'package:time_todo/ui/todo/todo_main.dart';

class MainBottomNavigation extends StatefulWidget {
  const MainBottomNavigation({super.key});

  @override
  State<MainBottomNavigation> createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  var tabIndex = 0;

  final List<Widget> pages = [
    // 홈 메인 화면
    HomeMain(),
    // 투두 메인 화면
    TodoMain(),
    // 마이페이지
    MyPageMain(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[tabIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: mainBlue,
          child: Icon(CupertinoIcons.house, color: Colors.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          onPressed: () {
            setState(() {
              tabIndex = 0;
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
          height: 55,
          notchMargin: 15,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    icon: Icon(CupertinoIcons.calendar)),
              ),
              // 여백
              SizedBox(width: 70),
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tabIndex = 2;
                      });
                    },
                    icon: Icon(CupertinoIcons.person_2_fill)),
              ),
            ],
          ),
        ));
  }
}
