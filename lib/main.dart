import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/components/widget/breakpoint.dart';
import 'package:time_todo/components/widget/mobile_bottom_navigation.dart';
import 'package:time_todo/components/widget/tablet_bottom_navigation.dart';
import 'package:time_todo/ui/home/screen/home_screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late double deviceWidth;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정하여 레이아웃 반영
    deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      // 화면 사이즈에 따라 다른 레이아웃을 보여줌
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomeScreen(),
        // bottomNavigationBar: MainBottomNavigation(),
        bottomNavigationBar: deviceWidth < BreakPoint.tablet
            ? MobileBottomNavigation()
            : TabletBottomNavigation(),
      ),
    );
  }
}

class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    // 텍스트 테마
    textTheme: TextTheme(
      // Bold
      titleLarge: TextStyle(fontFamily: 'pretendardBold', fontSize: 28, color: fontBlack),
      titleMedium: TextStyle(fontFamily: 'pretendardBold', fontSize: 24, color: fontBlack),
      titleSmall: TextStyle(fontFamily: 'pretendardBold', fontSize: 18, color: fontBlack),
      // SemiBold
      labelLarge: TextStyle(fontFamily: 'pretendardSemiBold', fontSize: 18),
      labelMedium: TextStyle(fontFamily: 'pretendardSemiBold', fontSize: 16),
      labelSmall: TextStyle(fontFamily: 'pretendardSemiBold', fontSize: 14),
      // Regular
      bodyLarge: TextStyle(fontFamily: 'pretendardRegular', fontSize: 18, color: fontBlack),
      bodyMedium: TextStyle(fontFamily: 'pretendardRegular', fontSize: 16, color: fontBlack),
      bodySmall: TextStyle(fontFamily: 'pretendardRegular', fontSize: 14, color: fontBlack),
    ),
  );
}