import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/bottom_navigation_state.dart';
import 'package:time_todo/ui/home/screen/home_screen_tablet.dart';
import 'package:time_todo/ui/mypage/screen/mypage_main.dart';
import 'package:time_todo/ui/todo/todo_main.dart';

class TabletBottomNavigation extends StatefulWidget {
  final AnimationController lottieController;

  const TabletBottomNavigation({
    super.key,
    required this.lottieController
  });

  @override
  State<TabletBottomNavigation> createState() => _TabletBottomNavigationState();
}

class _TabletBottomNavigationState extends State<TabletBottomNavigation> {
  late int _tabIndex;
  late final bool isPlaying = false;

  // 홈 아이콘 url
  String homeIcon =
      'https://lottie.host/9bbd663f-f6eb-441d-8c62-a0367fca7257/Bx3UQCJgYQ.json';

  // 캘린더 아이콘 url
  String calendarIcon =
      'https://lottie.host/379a3a99-02f2-4e7d-91cc-149cbd80185e/p4MxWgmZpE.json';

  final List<Widget> pages = [
    // 홈 메인 화면
    HomeScreenTablet(),
    // 투두 메인 화면
    TodoMain(),
    // 마이페이지
    MyPageMain(),
  ];

  @override
  void initState() {
    _tabIndex = 0;
    super.initState();
  }

  // 탭할 때 애니메이션 실행
  void startIconAnimation() {
    widget.lottieController.forward().then((_) {
      widget.lottieController.reset();
    });
  }

  // 플로팅 버튼 아이콘
  Widget changeFABIcon() {
    return (_tabIndex == 0)
        ? btnAnimation(calendarIcon, 100, 100, false)
        : btnAnimation(homeIcon, 100, 100, false);
  }

  // 애니메이션을 적용할 아이콘 위젯
  Widget btnAnimation(String url, double width, double height, bool repeat) {
    return Lottie.network(
      width: width,
      height: height,
      url,
      // 애니메이션 재생 컨트롤러
      controller: widget.lottieController,
      // 무한 반복 여부
      repeat: repeat,
      animate: isPlaying,
      onLoaded: (composition) {
        widget.lottieController.duration = composition.duration;
        // 애니메이션 준비 완료 되면 즉시 실행
        widget.lottieController.forward();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FAB 와 노치 사이 배경색
      // 투명으로 뒤에 보일 수 있는지 추후에 찾아보기,,
        backgroundColor: Color(0xFFF4F4F4),
        // 상태관리 변수에 따라 build
        body: BlocBuilder<BottomNaviCubit, BottomNaviState>(
            builder: (context, state) {
              _tabIndex = state.tabIndex;
              return pages[state.tabIndex];
            }),
        // FAB
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: mainBlue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          // 화면 변경
          onPressed: () {
            startIconAnimation();
            context.read<BottomNaviCubit>().changeTab(0);
          },
          child: changeFABIcon(),
        ),
        // BottomNavigation
        bottomNavigationBar: BottomAppBar(
          height: 55,
          notchMargin: 15,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  // 화면 변경
                    onPressed: () {
                      startIconAnimation();
                      context.read<BottomNaviCubit>().changeTab(1);
                    },
                    icon: Icon(CupertinoIcons.person_2_fill)),
              ),
              // 여백
              SizedBox(width: 70),
              Expanded(
                // 두번째 아이콘 (친구 목록)
                child: IconButton(
                  // 화면 변경
                    onPressed: () {
                      startIconAnimation();
                      context.read<BottomNaviCubit>().changeTab(2);
                    },
                    icon: Icon(CupertinoIcons.settings)),
              ),
            ],
          ),
        ));
  }
}
