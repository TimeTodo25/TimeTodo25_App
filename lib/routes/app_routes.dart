import 'package:auto_route/auto_route.dart';
import 'package:time_todo/ui/components/widget/tablet_bottom_navigation.dart';
import 'package:time_todo/ui/home/screen/home_screen_main.dart';
import 'package:time_todo/ui/login/screen/login_find_id_password_screen.dart';
import 'package:time_todo/ui/login/screen/login_find_id_success_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_certification_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_done_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_screen.dart';
import 'package:time_todo/ui/login/screen/login_join_user_info_screen.dart';
import 'package:time_todo/ui/login/screen/login_second_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_main_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_add_screen.dart';
import 'package:time_todo/ui/login/screen/login_main_screen.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_modify_screen.dart';
import 'package:time_todo/ui/mypage/screen/mypage_main.dart';
import 'package:time_todo/ui/components/widget/mobile_bottom_navigation.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/',
            page: HomeMainRoute.page,
            initial: true
        ),
        AutoRoute(
          path: '/mobile',
          page: MobileBottomNavigationRoute.page,
        ),
        AutoRoute(
          path: '/tablet',
          page: TabletBottomNavigationRoute.page,
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
      ];
}
