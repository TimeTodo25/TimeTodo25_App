import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'd_day.dart';

class DDayCarouselSlider extends StatefulWidget {
  const DDayCarouselSlider({super.key});

  @override
  State<DDayCarouselSlider> createState() => _DDayCarouselSliderState();
}

class _DDayCarouselSliderState extends State<DDayCarouselSlider> {
  final CarouselSliderController controller = CarouselSliderController();


  @override
  Widget build(BuildContext context) {
        return Container(
          child: CarouselSlider.builder(
            disableGesture: true,
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return dDayTodoList();
            },
            carouselController: controller,
            options: CarouselOptions(
              // 각 페이지가 차지하는 viewPort 정도
                viewportFraction: 1.0,
                aspectRatio: 2.2/1,
                autoPlay: false,
                // 초기 페이지 인덱스
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                }),
          ),
        );
      }
}


// 슬라이드 안에 띄울 투두 내용
Widget dDayTodoList() {
  return Column(
    children: [
      Expanded(
        child: ListView.separated(
          padding: EdgeInsets.all(4),
          // padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: Text('수학 문제집 ${index}p'),
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    'D-100',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return AppComponents.greyDivider;
          },
          itemCount: todoList.length,
        ),
      ),
    ],
  );
}