import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/login/screen/login_join_screen.dart';
import 'package:time_todo/ui/login/screen/login_main_screen.dart';
import 'package:time_todo/widget/main_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.themeData,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: LoginMain())));// MainBottomNavigation())));
  }
}
class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    // 텍스트 테마
    textTheme: const TextTheme(
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