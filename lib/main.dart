import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/bottom_navigation_state.dart';
import 'package:time_todo/bloc/d_day/d_day_bloc.dart';
import 'package:time_todo/bloc/join/join_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/bloc/category_detail/category_detail_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/theme_cubit.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/ui/components/widget/breakpoint.dart';
import 'package:time_todo/ui/todo/widget/timer/ticker.dart';
import 'bloc/calendar/calendar_bloc.dart';
import 'bloc/timer/circle_timer/circle_timer_bloc.dart';
import 'bloc/timer/linear_timer/linear_timer_bloc.dart';
import 'bloc/timer/timer_graph/timer_graph_bloc.dart';
import 'bloc/timetodo_observer.dart';

void main() {
  Bloc.observer = TimetodoObserver();
  final appRouter = AppRouter();
  runApp(MyApp(
    appRouter: appRouter,
  ));
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 애니메이션 컨트롤러 사용을 위한 mixin 추가
class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late double deviceWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정하여 레이아웃 반영
    deviceWidth = MediaQuery.of(context).size.width;

    // 화면 회전 설정
    // 화면이 700 이상일 때만 회전 허용
    if (deviceWidth >= BreakPoint.tablet) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ]);
    } else {
      // 화면이 700 미만일 때 세로로 고정
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNaviCubit()),
        BlocProvider(create: (context) => JoinBloc()),
        BlocProvider(create: (_) => TodayGoalBloc()),
        BlocProvider(create: (context) => DdayBloc()),
        BlocProvider(create: (_) => CategoryDetailBloc()),
        BlocProvider(create: (_) => CategoryListBloc()),
        BlocProvider(create: (_) => TodoDetailBloc()),
        BlocProvider(create: (_) => TodoListBloc()),
        BlocProvider(
            create: (context) => CalendarBloc(
                  categoryListBloc: BlocProvider.of<CategoryListBloc>(
                      context), // 이미 생성된 CategoryListBloc 주입
                )),
        BlocProvider(create: (_) => CircleTimerBloc(ticker: const Ticker())),
        BlocProvider(create: (_) => LinearTimerBloc(ticker: const Ticker())),
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => TimerGraphBloc()),
        BlocProvider(create: (_) => AllTimerBloc())
      ],
      child: MaterialApp.router(
        routerConfig: widget.appRouter.config(),
        theme: AppTheme.themeData,
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
      ),
    );
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
