import 'package:flutter/material.dart';
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
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(child: MainBottomNavigation())));
  }
}
