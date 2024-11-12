import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/routine/screen/routine_add_screen.dart';
import 'package:time_todo/ui/mypage/routine/screen/routine_modify_screen.dart';

import '../../../../components/widget/app_components.dart';
import '../../../../components/widget/breakpoint.dart';

class RoutineList extends StatefulWidget {

  final String tagName;
  final Color tagColor;
  final int tagItemCount;
  // device 의 width 크기
  final double maxWidth;

  const RoutineList({
    super.key,
    required this.tagName,
    required this.tagColor,
    required this.tagItemCount,
    required this.maxWidth,
  });

  @override
  State<RoutineList> createState() => _RoutineListState();
}

class _RoutineListState extends State<RoutineList> {

  String title = "일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십";

  Widget RoutineList(){
    return SizedBox(
      // 가변 리스트 생성
      child: ListView.builder(
        padding: EdgeInsets.zero,
        // 스크롤 없도록 설정
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.tagItemCount,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => RoutineModifyScreen(title: title, tagColor: widget.tagColor, tagName: widget.tagName)));
          },
          child: Column(
            children: [
              // 투두 타이틀
              todoTitle(widget.tagColor, widget.maxWidth, index),
              AppComponents.greyDivider
            ],
          ),
        ),
      ),
    );
  }

  // 투두 타이틀
  Widget todoTitle(Color tagColor, double maxWidth, int index) {
    double titleWidthTablet = maxWidth * 0.75; // 태블릿에서 타이틀이 차지할 사이즈
    double titleWidthMobile = maxWidth * 0.6; // 모바일에서 타이틀이 차지할 사이즈
    bool isTablet = maxWidth > 700; // 화면 크기에 따라 모바일/태블릿 구분

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 타이틀 텍스트 왼쪽 여백 과 타이틀 텍스트
        Container(
          margin: EdgeInsets.only(left: 5),
          width: isTablet ? titleWidthTablet : titleWidthMobile, // 너비 설정
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 타이틀 텍스트
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis, // 글자 초과 시 ... 처리
                maxLines: 1, // 한 줄로 제한
              ),
              // 시작 날짜 및 마침 날짜 텍스트
              Text(
                "24.10.24 ~ 24.11.16",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 12,
                    color: grey3
                ),
              )
            ],
          ),
        ),
        // 반복주기
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 반복주기 텍스트
              Text(
                "매일",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(

                ),
              ),
              // 반복 날짜 텍스트
              Text(
                "월,화,금",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 12,
                    color: grey3
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      // expansionTile 의 기본 border 없애기
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        // expansionTile 의 기본 패딩 제거
        tilePadding: const EdgeInsets.all(0),
        collapsedIconColor: Colors.grey,
        initiallyExpanded: true,
        title:
        Row(
          children: [
            IntrinsicWidth(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RoutineAddScreen(tagColor: widget.tagColor, tagName: widget.tagName)));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // 태그 표시 컨테이너
                  height: 31,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [ BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 1)
                      )]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.tagName, style: TextStyle(color: widget.tagColor, fontFamily:'pretendardSemiBold', fontSize: 14),),
                      SizedBox(width: 5),
                      Icon(Icons.add, size: 14)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        children: [
          RoutineList()
        ],
      ),
    );
  }
}
