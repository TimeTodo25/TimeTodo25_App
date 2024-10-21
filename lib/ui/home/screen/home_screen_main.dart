import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/screen/home_screen_mobile.dart';
import 'package:time_todo/ui/home/screen/home_screen_tablet.dart';
import 'package:time_todo/components/widget/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: HomeScreenMobile(),
        tablet: HomeScreenTablet()
    );
  }
}