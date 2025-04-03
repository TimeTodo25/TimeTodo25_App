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
    CategoryAddRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryScreenAdd(),
      );
    },
    CategoryEditRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryEditRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryScreenEdit(
          key: args.key,
          editCategoryIndex: args.editCategoryIndex,
        ),
      );
    },
    CategoryMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryScreenMain(),
      );
    },
    CategorySettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryScreenSetting(),
      );
    },
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MobileBottomNavigation(),
      );
    },
    MyPageMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPageMain(),
      );
    },
    RoutineAddRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RoutineAddScreen(),
      );
    },
    RoutineModifyRoute.name: (routeData) {
      final args = routeData.argsAs<RoutineModifyRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RoutineModifyScreen(
          key: args.key,
          tagColor: args.tagColor,
          tagName: args.tagName,
          title: args.title,
        ),
      );
    },
    RoutineMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RoutineMainScreen(),
      );
    },
  };
}

/// generated route for
/// [CategoryScreenAdd]
class CategoryAddRoute extends PageRouteInfo<void> {
  const CategoryAddRoute({List<PageRouteInfo>? children})
      : super(
          CategoryAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryAddRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryScreenEdit]
class CategoryEditRoute extends PageRouteInfo<CategoryEditRouteArgs> {
  CategoryEditRoute({
    Key? key,
    required int editCategoryIndex,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryEditRoute.name,
          args: CategoryEditRouteArgs(
            key: key,
            editCategoryIndex: editCategoryIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryEditRoute';

  static const PageInfo<CategoryEditRouteArgs> page =
      PageInfo<CategoryEditRouteArgs>(name);
}

class CategoryEditRouteArgs {
  const CategoryEditRouteArgs({
    this.key,
    required this.editCategoryIndex,
  });

  final Key? key;

  final int editCategoryIndex;

  @override
  String toString() {
    return 'CategoryEditRouteArgs{key: $key, editCategoryIndex: $editCategoryIndex}';
  }
}

/// generated route for
/// [CategoryScreenMain]
class CategoryMainRoute extends PageRouteInfo<void> {
  const CategoryMainRoute({List<PageRouteInfo>? children})
      : super(
          CategoryMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryScreenSetting]
class CategorySettingRoute extends PageRouteInfo<void> {
  const CategorySettingRoute({List<PageRouteInfo>? children})
      : super(
          CategorySettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategorySettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class MobileBottomNavigationRoute extends PageRouteInfo<void> {
  const MobileBottomNavigationRoute({List<PageRouteInfo>? children})
      : super(
          MobileBottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileBottomNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [RoutineAddScreen]
class RoutineAddRoute extends PageRouteInfo<void> {
  const RoutineAddRoute({List<PageRouteInfo>? children})
      : super(
          RoutineAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutineAddRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RoutineModifyScreen]
class RoutineModifyRoute extends PageRouteInfo<RoutineModifyRouteArgs> {
  RoutineModifyRoute({
    Key? key,
    required Color tagColor,
    required String tagName,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          RoutineModifyRoute.name,
          args: RoutineModifyRouteArgs(
            key: key,
            tagColor: tagColor,
            tagName: tagName,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'RoutineModifyRoute';

  static const PageInfo<RoutineModifyRouteArgs> page =
      PageInfo<RoutineModifyRouteArgs>(name);
}

class RoutineModifyRouteArgs {
  const RoutineModifyRouteArgs({
    this.key,
    required this.tagColor,
    required this.tagName,
    required this.title,
  });

  final Key? key;

  final Color tagColor;

  final String tagName;

  final String title;

  @override
  String toString() {
    return 'RoutineModifyRouteArgs{key: $key, tagColor: $tagColor, tagName: $tagName, title: $title}';
  }
}

/// generated route for
/// [_RoutineMainScreenState]
class RoutineMainRoute extends PageRouteInfo<void> {
  const RoutineMainRoute({List<PageRouteInfo>? children})
      : super(
          RoutineMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutineMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
