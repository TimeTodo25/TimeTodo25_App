import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/mobile_bottom_navigation.dart';
import 'package:time_todo/ui/components/widget/responsive_layout.dart';
import 'package:time_todo/ui/components/widget/tablet_bottom_navigation.dart';

@RoutePage(name: 'HomeMainRoute')
class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
          mobile: MobileBottomNavigation(),
          tablet: TabletBottomNavigation()
      ),
    );
  }
}
