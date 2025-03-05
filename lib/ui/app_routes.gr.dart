// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of '../routes/app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DDayAddRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DDayAddScreen(),
      );
    },
    DDayMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DDayMainScreen(),
      );
    },
    DDayModifyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DDayModifyScreen(),
      );
    },
    HomeMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenMain(),
      );
    },
    LoginFindIdPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginFindIdPasswordScreen(),
      );
    },
    LoginFindIdSuccessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginFindIdSuccessScreen(),
      );
    },
    LoginJoinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginJoin(),
      );
    },
    LoginJoinCertificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginJoinCertification(),
      );
    },
    LoginJoinDoneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginJoinDoneScreen(),
      );
    },
    LoginJoinUserInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginJoinUserInfo(),
      );
    },
    LoginMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginMainScreen(),
      );
    },
    LoginSecondRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginSecond(),
      );
    },
    MobileBottomNavigationRoute.name: (routeData) {
      final args = routeData.argsAs<MobileBottomNavigationRouteArgs>(
          orElse: () => const MobileBottomNavigationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileBottomNavigation(
          key: args.key,
          lottieController: args.lottieController,
        ),
      );
    },
    MyPageMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPageMain(),
      );
    },
  };
}

/// generated route for
/// [DDayAddScreen]
class DDayAddRoute extends PageRouteInfo<void> {
  const DDayAddRoute({List<PageRouteInfo>? children})
      : super(
          DDayAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'DDayAddRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DDayMainScreen]
class DDayMainRoute extends PageRouteInfo<void> {
  const DDayMainRoute({List<PageRouteInfo>? children})
      : super(
          DDayMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'DDayMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DDayModifyScreen]
class DDayModifyRoute extends PageRouteInfo<void> {
  const DDayModifyRoute({List<PageRouteInfo>? children})
      : super(
          DDayModifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DDayModifyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenMain]
class HomeMainRoute extends PageRouteInfo<void> {
  const HomeMainRoute({List<PageRouteInfo>? children})
      : super(
          HomeMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginFindIdPasswordScreen]
class LoginFindIdPasswordRoute extends PageRouteInfo<void> {
  const LoginFindIdPasswordRoute({List<PageRouteInfo>? children})
      : super(
          LoginFindIdPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginFindIdPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginFindIdSuccessScreen]
class LoginFindIdSuccessRoute extends PageRouteInfo<void> {
  const LoginFindIdSuccessRoute({List<PageRouteInfo>? children})
      : super(
          LoginFindIdSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginFindIdSuccessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginJoin]
class LoginJoinRoute extends PageRouteInfo<void> {
  const LoginJoinRoute({List<PageRouteInfo>? children})
      : super(
          LoginJoinRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginJoinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginJoinCertification]
class LoginJoinCertificationRoute extends PageRouteInfo<void> {
  const LoginJoinCertificationRoute({List<PageRouteInfo>? children})
      : super(
          LoginJoinCertificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginJoinCertificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginJoinDoneScreen]
class LoginJoinDoneRoute extends PageRouteInfo<void> {
  const LoginJoinDoneRoute({List<PageRouteInfo>? children})
      : super(
          LoginJoinDoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginJoinDoneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginJoinUserInfo]
class LoginJoinUserInfoRoute extends PageRouteInfo<void> {
  const LoginJoinUserInfoRoute({List<PageRouteInfo>? children})
      : super(
          LoginJoinUserInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginJoinUserInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginMainScreen]
class LoginMainRoute extends PageRouteInfo<void> {
  const LoginMainRoute({List<PageRouteInfo>? children})
      : super(
          LoginMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginSecond]
class LoginSecondRoute extends PageRouteInfo<void> {
  const LoginSecondRoute({List<PageRouteInfo>? children})
      : super(
          LoginSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSecondRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MobileBottomNavigation]
class MobileBottomNavigationRoute
    extends PageRouteInfo<MobileBottomNavigationRouteArgs> {
  MobileBottomNavigationRoute({
    Key? key,
    AnimationController? lottieController,
    List<PageRouteInfo>? children,
  }) : super(
          MobileBottomNavigationRoute.name,
          args: MobileBottomNavigationRouteArgs(
            key: key,
            lottieController: lottieController,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileBottomNavigationRoute';

  static const PageInfo<MobileBottomNavigationRouteArgs> page =
      PageInfo<MobileBottomNavigationRouteArgs>(name);
}

class MobileBottomNavigationRouteArgs {
  const MobileBottomNavigationRouteArgs({
    this.key,
    this.lottieController,
  });

  final Key? key;

  final AnimationController? lottieController;

  @override
  String toString() {
    return 'MobileBottomNavigationRouteArgs{key: $key, lottieController: $lottieController}';
  }
}

/// generated route for
/// [MyPageMain]
class MyPageMainRoute extends PageRouteInfo<void> {
  const MyPageMainRoute({List<PageRouteInfo>? children})
      : super(
          MyPageMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPageMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
