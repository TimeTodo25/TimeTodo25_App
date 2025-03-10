import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/main_bottom_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_layout.dart';
import 'package:time_todo/ui/home/widget/floating_action_button_main.dart';

@RoutePage(name: 'HomeMainRoute')
class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AutoTabsScaffold(
        routes: const [
          HomeRouteMobileMain(),
          HomeRouteMobileSub(),
          LoginMainRoute(),
          MyPageMainRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return MainBottomAppBar(onTapRightIcon: () {}, onTapLeftIcon: () {});
        },
        floatingActionButton: const FloatingActionButtonMain(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      tablet: AutoTabsScaffold(
        routes: const [
          HomeRouteTablet(),
          LoginMainRoute(),
          MyPageMainRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return MainBottomAppBar(onTapRightIcon: () {}, onTapLeftIcon: () {});
        },
      ),
    );
  }
}
