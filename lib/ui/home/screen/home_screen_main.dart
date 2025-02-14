import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/responsive_layout.dart';
import 'package:time_todo/ui/home/screen/home_screen_mobile.dart';
import 'package:time_todo/ui/home/screen/home_screen_tablet.dart';

@RoutePage(name: 'HomeMainRoute')
class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: HomeScreenMobile(), tablet: HomeScreenTablet());
  }
}
