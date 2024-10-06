import 'package:flutter/material.dart';
import 'package:time_todo/widget/main_bottom_navigation.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('home_screen'),),
    );
  }
}