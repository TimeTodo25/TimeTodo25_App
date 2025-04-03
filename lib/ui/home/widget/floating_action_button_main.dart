import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:time_todo/assets/colors/color.dart';

class FloatingActionButtonMain extends StatefulWidget {
  const FloatingActionButtonMain({super.key});

  @override
  State<FloatingActionButtonMain> createState() =>
      _FloatingActionButtonMainState();
}

class _FloatingActionButtonMainState extends State<FloatingActionButtonMain>
    with TickerProviderStateMixin {
  bool isClicked = false;
  bool isPlaying = false;
  late AnimationController _lottieController;

  // 홈 아이콘 url
  String homeIcon =
      'https://lottie.host/9bbd663f-f6eb-441d-8c62-a0367fca7257/Bx3UQCJgYQ.json';

  // 캘린더 아이콘 url
  String calendarIcon =
      'https://lottie.host/379a3a99-02f2-4e7d-91cc-149cbd80185e/p4MxWgmZpE.json';

  @override
  void initState() {
    super.initState();
    _lottieController = AnimationController(vsync: this);
  }

  // 탭할 때 애니메이션 실행
  void startIconAnimation() {
    if (_lottieController.duration != null) {
      // duration이 설정된 경우만 실행
      _lottieController.forward().then((_) {
        _lottieController.reset();
      });
    }
  }

  // 플로팅 버튼 아이콘 변경
  Widget changeFABIcon(bool isClicked) {
    return isClicked
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
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabsRouter =
        AutoTabsRouter.of(context); // 현재 탭의 라우트를 확인하여, 이동할 화면을 결정
    final int tabIndex = tabsRouter.activeIndex;

    return FloatingActionButton(
      heroTag: 'mobileFAB',
      backgroundColor: mainBlue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      onPressed: () {
        startIconAnimation();
        setState(() {
          isClicked = !isClicked; // 버튼 클릭 시 상태 변경
        });

        if (tabsRouter.activeIndex == 0) {
          // HomeRouteMobileMain에 있을 때 Sub 화면으로 이동
          tabsRouter.setActiveIndex(1); // HomeRouteMobileSub로 이동
        } else {
          // HomeRouteMobileSub에 있을 때 Main 화면으로 이동
          tabsRouter.setActiveIndex(0); // HomeRouteMobileMain으로 이동
        }
      },
      child: changeFABIcon(isClicked),
    );
  }
}
