import 'package:flutter/material.dart';
import 'package:time_todo/components/widget/breakpoint.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobile, required this.tablet});

  final Widget mobile;
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < BreakPoint.tablet) {
            return mobile;
          } else {
            return tablet;
          }
        });
  }
}