import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/home/screen/home_screen_mobile.dart';
import 'package:time_todo/ui/mypage/screen/mypage_main.dart';
import 'package:time_todo/ui/todo/todo_main.dart';

class MobileBottomNavigation extends StatefulWidget {
  const MobileBottomNavigation({super.key});

  @override
  State<MobileBottomNavigation> createState() => _MobileBottomNavigationState();
}

class _MobileBottomNavigationState extends State<MobileBottomNavigation>
    with TickerProviderStateMixin {
  var tabIndex = 0;
  late final AnimationController _lottieController;
  bool isPlaying = false;

  // 홈 아이콘 url
  String homeIcon =
      'https://lottie.host/9bbd663f-f6eb-441d-8c62-a0367fca7257/Bx3UQCJgYQ.json';

  // 캘린더 아이콘 url
  String calendarIcon =
      'https://lottie.host/379a3a99-02f2-4e7d-91cc-149cbd80185e/p4MxWgmZpE.json';

  final List<Widget> pages = [
    // 홈 메인 화면
    HomeScreenMobile(),
    // 투두 메인 화면
    TodoMain(),
    // 마이페이지
    MyPageMain(),
  ];

  @override
  void initState() {
    // 컨트롤러 생성
    _lottieController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // 컨트롤러 해제
    _lottieController.dispose();
    super.dispose();
  }

  // 플로팅 버튼 아이콘
  Widget changeFABIcon() {
    return (tabIndex == 0)
        ? btnAnimation(calendarIcon, 100, 100, false)
        : btnAnimation(homeIcon, 100, 100, false);
  }

  // 탭할 때 애니메이션 처리
  void handleTabChange(int index) {
    setState(() {
      tabIndex = index;
      var ticker = _lottieController.forward();
      ticker.whenComplete(() {
        _lottieController.reset();
      });
    });
  }

  // 애니메이션 적용 위젯
  Widget btnAnimation(String url, double width, double height, bool repeat) {
    return Lottie.network(
      width: width,
      height: height,
      url,
      // 애니메이션 재생 컨트롤러
      controller: _lottieController,
      // 무한 반복 여부
      repeat: repeat,
      animate: isPlaying,
      onLoaded: (composition) {
        _lottieController.duration = composition.duration;
        // 애니메이션 준비 완료 되면 즉시 실행
        _lottieController.forward();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FAB 와 노치 사이 배경색
      // 투명으로 뒤에 보일 수 있는지 추후에 찾아보기,,
        backgroundColor: grey1.withOpacity(0.7),
        body: pages[tabIndex],
        // FAB
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: mainBlue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          // event
          onPressed: () => handleTabChange(0),
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
                // 첫번째 아이콘 (홈 or 캘린더)
                child: IconButton(
                  // event
                    onPressed: () => handleTabChange(1),
                    icon: Icon(CupertinoIcons.person_2_fill)),
              ),
              // 여백
              SizedBox(width: 70),
              Expanded(
                // 두번째 아이콘 (친구 목록)
                child: IconButton(
                    onPressed: () => handleTabChange(2),
                    icon: Icon(CupertinoIcons.settings)),
              ),
            ],
          ),
        ));
  }
}