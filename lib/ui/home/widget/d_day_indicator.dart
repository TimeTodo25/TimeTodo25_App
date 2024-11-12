import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';

class DDayIndicator extends StatefulWidget {
  final List list;
  final int currentPage;

  DDayIndicator({
    super.key,
    required this.list,
    required this.currentPage});

  @override
  State<DDayIndicator> createState() => _DDayIndicatorState();
}

class _DDayIndicatorState extends State<DDayIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: AnimatedSmoothIndicator(
          activeIndex: widget.currentPage,
          count: widget.list.length,
          effect: const JumpingDotEffect(
              dotHeight: 6,
              dotWidth: 6,
              dotColor: grey2,
              activeDotColor: mainYellow,
              spacing: 3)),
    );
  }
}
