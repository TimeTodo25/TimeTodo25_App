// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DDayMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DDayMainScreen(),
      );
    },
    HomeMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenMain(),
      );
    },
    LoginMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginMainScreen(),
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
