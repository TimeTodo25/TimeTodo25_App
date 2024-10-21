import 'package:flutter/material.dart';
import 'package:time_todo/components/widget/breakpoint.dart';

class ResponsiveCenter extends StatefulWidget {
  const ResponsiveCenter({
    super.key,
    // defalut 값 지정
    // deskTop = 1200 까지 위젯 늘어나고 이후 width 여백이 증가
    this.maxWidth = BreakPoint.deskTop,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  final double maxWidth;
  final Widget child;
  // 위젯의 inner padding, outter padding 을 주기 위해 사용함
  final EdgeInsetsGeometry padding;

  @override
  State<ResponsiveCenter> createState() => _ResponsiveCenterState();
}

class _ResponsiveCenterState extends State<ResponsiveCenter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.maxWidth,
        child: Padding(
          padding: widget.padding,
          child: widget.child,
        ),
      ),
    );
  }
}