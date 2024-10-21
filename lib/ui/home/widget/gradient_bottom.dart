import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class GradientBottom extends StatelessWidget {
  final double height;
  const GradientBottom({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, grey2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )));
  }
}