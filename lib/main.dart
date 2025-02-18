import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/bottom_navigation_state.dart';
import 'package:time_todo/bloc/calendar_state.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_bloc.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/breakpoint.dart';
import 'package:time_todo/ui/components/widget/mobile_bottom_navigation.dart';
import 'package:time_todo/ui/components/widget/tablet_bottom_navigation.dart';
import 'package:time_todo/ui/todo/widget/timer/ticker.dart';
import 'bloc/circle_timer/circle_timer_bloc.dart';
import 'bloc/linear_timer/linear_timer_bloc.dart';
import 'bloc/timetodo_observer.dart';
import 'bloc/todo/todo_bloc.dart';

void main() {
  Bloc.observer = TimetodoObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 애니메이션 컨트롤러 사용을 위한 mixin 추가
class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late double deviceWidth;
  final _appRouter = AppRouter();
  late final AnimationController _lottieController;

  @override
  void initState() {
    super.initState();
    // 애니메이션 컨트롤러 초기화
    _lottieController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // 애니메이션 컨트롤러 해제
    _lottieController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정하여 레이아웃 반영
    deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BottomNaviCubit()),
          BlocProvider(create: (context) => CalendarBloc()),
          BlocProvider(create: (context) => TodoBloc()),
          BlocProvider(create: (context) => CategoryBloc()),
          BlocProvider(create: (context) => DdayBloc())
          BlocProvider(create: (context) => CircleTimerBloc(ticker:const Ticker())),
          BlocProvider(create: (context) => LinearTimerBloc(ticker:const Ticker())),
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          theme: AppTheme.themeData,

          // 화면 사이즈에 따라 다른 레이아웃을 보여줌
          // home: Scaffold(
          //     body: OrientationBuilder(builder: (context, orientation) {
          //   // 화면이 700 이상일 때만 회전 허용
          //   if (deviceWidth >= 700) {
          //     SystemChrome.setPreferredOrientations([
          //       DeviceOrientation.portraitUp,
          //       DeviceOrientation.landscapeLeft,
          //       DeviceOrientation.landscapeRight
          //     ]);
          //   } else {
          //     // 화면이 700 미만일 때 세로로 고정
          //     SystemChrome.setPreferredOrientations(
          //         [DeviceOrientation.portraitUp]);
          //   }
          //   return (deviceWidth < BreakPoint.tablet)
          //       ? MobileBottomNavigation(lottieController: _lottieController)
          //       : TabletBottomNavigation(lottieController: _lottieController);
          // })),
          // 지역화
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
            Locale('ko', ''), // Korean, no country code
          ],
        ));
  }
}

class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    // 텍스트 테마
    textTheme: TextTheme(
      // Bold
      titleLarge: TextStyle(
          fontFamily: 'pretendardBold', fontSize: 28, color: fontBlack),
      titleMedium: TextStyle(
          fontFamily: 'pretendardBold', fontSize: 24, color: fontBlack),
      titleSmall: TextStyle(
          fontFamily: 'pretendardBold', fontSize: 18, color: fontBlack),
      // SemiBold
      labelLarge: TextStyle(
          fontFamily: 'pretendardSemiBold', fontSize: 18, color: fontBlack),
      labelMedium: TextStyle(
          fontFamily: 'pretendardSemiBold', fontSize: 16, color: fontBlack),
      labelSmall: TextStyle(
          fontFamily: 'pretendardSemiBold', fontSize: 14, color: fontBlack),
      // Regular
      bodyLarge: TextStyle(
          fontFamily: 'pretendardRegular', fontSize: 18, color: fontBlack),
      bodyMedium: TextStyle(
          fontFamily: 'pretendardRegular', fontSize: 16, color: fontBlack),
      bodySmall: TextStyle(
          fontFamily: 'pretendardRegular', fontSize: 14, color: fontBlack),
    ),
  );
}
