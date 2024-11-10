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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                'D-DAY',
                style: TextStyle(
                  color: mainYellow,
                  fontFamily: 'pretendardBold',
                ),
              ),
            ),
            DDayIndicator(
                list: todoList,
                currentPage: currentPage
            ),
          ]
        ),
        SizedBox(height: 8),
        // 카드
        Expanded(
            child: DDayCarouselSlider()
        )
      ],
    );
  }
}
