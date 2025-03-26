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
    CircleTimerRoute.name: (routeData) {
      final args = routeData.argsAs<CircleTimerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CircleTimerScreen(
          key: args.key,
          todoData: args.todoData,
          categoryColor: args.categoryColor,
        ),
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
    HomeRouteMobileMain.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenMobileMain(),
      );
    },
    HomeRouteMobileSub.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenMobileSub(),
      );
    },
    HomeRouteTablet.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenTablet(),
      );
    },
    LinearTimerRoute.name: (routeData) {
      final args = routeData.argsAs<LinearTimerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LinearTimerScreen(
          key: args.key,
          todoData: args.todoData,
          categoryColor: args.categoryColor,
        ),
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
    CategoryManageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPageCategoryManage(),
      );
    },
    MyPageMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPageMain(),
      );
    },
    TodoAddRoute.name: (routeData) {
      final args = routeData.argsAs<TodoAddRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TodoAddScreen(
          key: args.key,
          categoryIdx: args.categoryIdx,
          categoryColor: args.categoryColor,
          categoryName: args.categoryName,
        ),
      );
    },
    TodoModifyRoute.name: (routeData) {
      final args = routeData.argsAs<TodoModifyRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TodoModifyScreen(
          key: args.key,
          todo: args.todo,
        ),
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
/// [CircleTimerScreen]
class CircleTimerRoute extends PageRouteInfo<CircleTimerRouteArgs> {
  CircleTimerRoute({
    Key? key,
    required Todo todoData,
    required Color categoryColor,
    List<PageRouteInfo>? children,
  }) : super(
          CircleTimerRoute.name,
          args: CircleTimerRouteArgs(
            key: key,
            todoData: todoData,
            categoryColor: categoryColor,
          ),
          initialChildren: children,
        );

  static const String name = 'CircleTimerRoute';

  static const PageInfo<CircleTimerRouteArgs> page =
      PageInfo<CircleTimerRouteArgs>(name);
}

class CircleTimerRouteArgs {
  const CircleTimerRouteArgs({
    this.key,
    required this.todoData,
    required this.categoryColor,
  });

  final Key? key;

  final Todo todoData;

  final Color categoryColor;

  @override
  String toString() {
    return 'CircleTimerRouteArgs{key: $key, todoData: $todoData, categoryColor: $categoryColor}';
  }
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
/// [HomeScreenMobileMain]
class HomeRouteMobileMain extends PageRouteInfo<void> {
  const HomeRouteMobileMain({List<PageRouteInfo>? children})
      : super(
          HomeRouteMobileMain.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteMobileMain';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenMobileSub]
class HomeRouteMobileSub extends PageRouteInfo<void> {
  const HomeRouteMobileSub({List<PageRouteInfo>? children})
      : super(
          HomeRouteMobileSub.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteMobileSub';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenTablet]
class HomeRouteTablet extends PageRouteInfo<void> {
  const HomeRouteTablet({List<PageRouteInfo>? children})
      : super(
          HomeRouteTablet.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteTablet';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LinearTimerScreen]
class LinearTimerRoute extends PageRouteInfo<LinearTimerRouteArgs> {
  LinearTimerRoute({
    Key? key,
    required Todo todoData,
    required Color categoryColor,
    List<PageRouteInfo>? children,
  }) : super(
          LinearTimerRoute.name,
          args: LinearTimerRouteArgs(
            key: key,
            todoData: todoData,
            categoryColor: categoryColor,
          ),
          initialChildren: children,
        );

  static const String name = 'LinearTimerRoute';

  static const PageInfo<LinearTimerRouteArgs> page =
      PageInfo<LinearTimerRouteArgs>(name);
}

class LinearTimerRouteArgs {
  const LinearTimerRouteArgs({
    this.key,
    required this.todoData,
    required this.categoryColor,
  });

  final Key? key;

  final Todo todoData;

  final Color categoryColor;

  @override
  String toString() {
    return 'LinearTimerRouteArgs{key: $key, todoData: $todoData, categoryColor: $categoryColor}';
  }
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
/// [MyPageCategoryManage]
class CategoryManageRoute extends PageRouteInfo<void> {
  const CategoryManageRoute({List<PageRouteInfo>? children})
      : super(
          CategoryManageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryManageRoute';

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
/// [TodoAddScreen]
class TodoAddRoute extends PageRouteInfo<TodoAddRouteArgs> {
  TodoAddRoute({
    Key? key,
    required int categoryIdx,
    required Color categoryColor,
    required String categoryName,
    List<PageRouteInfo>? children,
  }) : super(
          TodoAddRoute.name,
          args: TodoAddRouteArgs(
            key: key,
            categoryIdx: categoryIdx,
            categoryColor: categoryColor,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'TodoAddRoute';

  static const PageInfo<TodoAddRouteArgs> page =
      PageInfo<TodoAddRouteArgs>(name);
}

class TodoAddRouteArgs {
  const TodoAddRouteArgs({
    this.key,
    required this.categoryIdx,
    required this.categoryColor,
    required this.categoryName,
  });

  final Key? key;

  final int categoryIdx;

  final Color categoryColor;

  final String categoryName;

  @override
  String toString() {
    return 'TodoAddRouteArgs{key: $key, categoryIdx: $categoryIdx, categoryColor: $categoryColor, categoryName: $categoryName}';
  }
}

/// generated route for
/// [TodoModifyScreen]
class TodoModifyRoute extends PageRouteInfo<TodoModifyRouteArgs> {
  TodoModifyRoute({
    Key? key,
    required Todo todo,
    List<PageRouteInfo>? children,
  }) : super(
          TodoModifyRoute.name,
          args: TodoModifyRouteArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'TodoModifyRoute';

  static const PageInfo<TodoModifyRouteArgs> page =
      PageInfo<TodoModifyRouteArgs>(name);
}

class TodoModifyRouteArgs {
  const TodoModifyRouteArgs({
    this.key,
    required this.todo,
  });

  final Key? key;

  final Todo todo;

  @override
  String toString() {
    return 'TodoModifyRouteArgs{key: $key, todo: $todo}';
  }
}
