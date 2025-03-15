import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/main_bottom_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_layout.dart';
import 'package:time_todo/ui/components/widget/toast_message.dart';
import 'package:time_todo/ui/home/widget/floating_action_button_main.dart';

@RoutePage(name: 'HomeMainRoute')
class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  DateTime? _lastBackPressTime;

  // 뒤로가기 버튼을 처리하는 메서드
  void backPressHandle() {
    final now = DateTime.now();
    const interval = Duration(seconds: 2); // 뒤로가기 버튼을 두 번 누르는 간격 (2초 이내)
    final isExit = _lastBackPressTime == null ||
        now.difference(_lastBackPressTime!) > interval;

    if (isExit) {
      // 첫 번째 뒤로가기: 시간 저장하고 메시지 표시
      _lastBackPressTime = now;
      ToastUtils.showToastMessage('한 번 더 누르면 앱이 종료됩니다');
      return;
    }
    // 두 번째 뒤로가기: 앱 종료
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (canPop, _) {
          if (canPop) {
            return;
          }
          backPressHandle();
        },
        child: ResponsiveLayout(
            mobile: mobile(),
            tablet: tablet()
        )
    );
  }
}

// 모바일 홈화면
Widget mobile() {
  return AutoTabsScaffold(
    routes: const [
      HomeRouteMobileMain(),
      HomeRouteMobileSub(),
      LoginMainRoute(),
      MyPageMainRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) {
      return const MainBottomAppBar();
    },
    floatingActionButton: const FloatingActionButtonMain(),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
}

// 태블릿 홈화면
Widget tablet() {
  return AutoTabsScaffold(
    routes: const [
      HomeRouteTablet(),
      LoginMainRoute(),
      MyPageMainRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) {
      return const MainBottomAppBar();
    },
  );
}
