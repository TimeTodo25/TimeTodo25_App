import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/home/widget/d_day_carousel_slider.dart';
import 'package:time_todo/ui/home/widget/d_day_indicator.dart';

class DDaySection extends StatefulWidget {
  final int kDayItemCount;
  final int dateCountdown;

  const DDaySection({
    super.key,
    required this.kDayItemCount,
    required this.dateCountdown,
  });

  @override
  State<DDaySection> createState() => _DDaySectionState();
}

int currentPage = 0;

// 나타낼 리스트
List todoList = [
  Text('data1'),
  Text('data2'),
  Text('data3'),
];

class _DDaySectionState extends State<DDaySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // D-Day 와 인디케이터 부분
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                'D-DAY',
                style: TextStyle(
                  color: mainYellow,
                  fontFamily: 'pretendardBold',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 7),
              child: DDayIndicator(
                  list: todoList,
                  currentPage: currentPage
              ),
            ),
          ]
        ),
        // TodoList 카드
        Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              width: double.maxFinite,
                child: DDayCarouselSlider()
            )
        )
      ],
    );
  }
}
