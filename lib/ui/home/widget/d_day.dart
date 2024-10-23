import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';

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

final CarouselSliderController controller = CarouselSliderController();
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
    return Stack(
      children: [
        sliderWidget(),
        Padding(
          // 인디케이터 위치 선정을 위한 패딩
          padding: EdgeInsets.only(right: 10, top: 15),
          child: makeIndicator(todoList, currentPage),
        )
      ],
    );
  }

  // 슬라이드
  Widget sliderWidget() {
    return CarouselSlider.builder(
      disableGesture: true,
      itemCount: todoList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return dDayTodoList();
      },
      carouselController: controller,
      options: CarouselOptions(
          height: double.maxFinite,
          // 각 페이지가 차지하는 viewPort 정도
          viewportFraction: 1.0,
          autoPlay: false,
          // 초기 페이지 인덱스
          initialPage: 0,
          // 그림자가 잘리지 않도록 설정
          clipBehavior: Clip.none,
          onPageChanged: (index, reason) {
            setState(() {
              currentPage = index;
            });
          }),
    );
  }

  // indicator
  Widget makeIndicator(List list, int currentPage) {
    return Container(
      alignment: Alignment.topRight,
      child: AnimatedSmoothIndicator(
          activeIndex: currentPage,
          count: todoList.length,
          effect: const JumpingDotEffect(
              dotHeight: 6,
              dotWidth: 6,
              dotColor: grey2,
              activeDotColor: mainYellow,
              spacing: 3)),
    );
  }
}

// 슬라이드 안에 띄울 투두 내용
Widget dDayTodoList() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 1)),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 4),
            child: Text(
              'D-DAY',
              style: TextStyle(
                color: mainYellow,
                fontFamily: 'pretendardBold',
              ),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 100,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text('수학 문제집 ${index}p'),
                    ),
                    Text(
                      'D-100',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
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
      ),
    ),
  );
}