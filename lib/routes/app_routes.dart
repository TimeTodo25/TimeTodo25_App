import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/home/screen/home_screen_main.dart';
import 'package:time_todo/ui/home/screen/home_screen_mobile_main.dart';
import 'package:time_todo/ui/home/screen/home_screen_mobile_sub.dart';
import 'package:time_todo/ui/home/screen/home_screen_tablet.dart';
import 'package:time_todo/ui/login/screen/login_find_id_password_screen.dart';
import 'package:time_todo/ui/login/screen/login_find_id_success_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_certification_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_done_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_user_info_screen.dart';
import 'package:time_todo/ui/login/screen/login_main_screen.dart';
import 'package:time_todo/ui/login/screen/login_second_screen.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_add.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_edit.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_main.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_manage.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_setting.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_add_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_main_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_modify_screen.dart';
import 'package:time_todo/ui/mypage/screen/mypage_main.dart';
import 'package:time_todo/ui/todo/screen/circle_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/linear_timer_screen.dart';
import 'package:time_todo/ui/todo/screen/todo_add_screen.dart';
import 'package:time_todo/ui/todo/screen/todo_modify_screen.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeMainRoute.page,
          initial: true,
          children: [
            // 모바일 전용 라우트
            AutoRoute(
              path: 'home-mobile',
              page: HomeRouteMobileMain.page,
            ),
            AutoRoute(path: 'home-mobile-sub', page: HomeRouteMobileSub.page),
            // 태블릿 전용 라우트
            AutoRoute(
              path: 'home-tablet',
              page: HomeRouteTablet.page,
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
          path: '/join/find-id-password',
          page: LoginFindIdPasswordRoute.page,
        ),
        AutoRoute(
          path: '/join/find-id-success',
          page: LoginFindIdSuccessRoute.page,
        ),
        AutoRoute(
          path: '/join/join-certification',
          page: LoginJoinCertificationRoute.page,
        ),
        AutoRoute(
          path: '/join/join-done',
          page: LoginJoinDoneRoute.page,
        ),
        AutoRoute(
          path: '/join/join-main',
          page: LoginJoinRoute.page,
        ),
        AutoRoute(
          path: '/join/join-user-info',
          page: LoginJoinUserInfoRoute.page,
        ),
        // AutoRoute(
        //   path: '/join/login-main',
        //   page: LoginMainRoute.page,
        // ),
        AutoRoute(
          path: '/join/l-second',
          page: LoginSecondRoute.page,
        ),
        AutoRoute(
          path: '/mypage/d-day-list',
          page: DDayMainRoute.page,
        ),
        AutoRoute(
          path: '/mypage/d-day-add',
          page: DDayAddRoute.page,
        ),
        AutoRoute(
          path: '/mypage/d-day-modify',
          page: DDayModifyRoute.page,
        ),
        AutoRoute(path: '/todo/todo-add', page: TodoAddRoute.page),
        AutoRoute(path: '/todo/todo-modify', page: TodoModifyRoute.page),
        AutoRoute(path: '/todo/linear_timer', page: LinearTimerRoute.page),
        AutoRoute(path: '/todo/circle_timer', page: CircleTimerRoute.page),
        AutoRoute(path: '/mypage/category-main', page: CategoryMainRoute.page),
        AutoRoute(path: '/mypage/category-add', page: CategoryAddRoute.page),
        AutoRoute(path: '/mypage/category-edit', page: CategoryEditRoute.page),
        AutoRoute(path: '/mypage/category-setting', page: CategorySettingRoute.page),
        AutoRoute(page: CategoryManageRoute.page)
      ];
}
