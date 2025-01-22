import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart'; // Key 타입을 위해 필요
import 'package:flutter/animation.dart'; // AnimationController를 위해 필요
import 'package:time_todo/ui/home/screen/home_screen_main.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_main_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_add_screen.dart';
import 'package:time_todo/ui/login/screen/login_main_screen.dart';
import 'package:time_todo/ui/mypage/screen/mypage_main.dart';
import 'package:time_todo/ui/components/widget/mobile_bottom_navigation.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: MobileBottomNavigationRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeMainRoute.page,
              // initial: true,
            ),
            AutoRoute(
              path: 'login',
              page: LoginMainRoute.page,
            ),
            AutoRoute(
              path: 'mypage',
              page: MyPageMainRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/mypage/d-day-list',
          page: DDayMainRoute.page,
        ),
        AutoRoute(
          path: '/mypage/d-day-add',
          page: DDayAddRoute.page,
        ),
      ];
}
