import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/breakpoint.dart';

class TagTodoList extends StatelessWidget {
  final int tagItemCount;
  final Color tagColor;
  final double maxWidth;  // device 의 width 크기


  const TagTodoList(
      {super.key,
        required this.tagItemCount,
        required this.tagColor,
        required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    bool isPlay = false;
    double timerMinWidth = 50; // 타이머 차지할 최소 사이즈
    double maxWidth = this.maxWidth;

    return SizedBox(
      // 가변 리스트 생성
      child: ListView.builder(
        padding: EdgeInsets.zero,
        // 스크롤 없도록 설정
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: tagItemCount,
        itemBuilder: (context, index) => Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // 투두 타이틀
              todoTitle(tagColor, maxWidth, index),
              // 투두 타이머
              todoTimer(tagColor, timerMinWidth, index, isPlay)
            ]),
            AppComponents.greyDivider
          ],
        ),
      ),
    );
  }
}

// 투두 타이틀
Widget todoTitle(Color tagColor, double maxWidth, int index) {
  String title = "일이삼사오육칠팔구십일이삼사오육칠팔구십";
  String startTime = "10:00 pm";
  String endTime = "12:00 pm";
  double titleWidthTablet = maxWidth * 0.35 ; // 태블릿에서 타이틀이 차지할 사이즈
  double titleWidthMobile = maxWidth * 0.75; // 모바일에서 타이틀이 차지할 사이즈

  return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Row(
          children: [
            // 타이틀 텍스트 왼쪽 여백
            SizedBox(width: 4),
            // 타이틀 텍스트
            Text(
              // 12글자 넘어가면 초과된 글자는 ...으로 표시
              title.length > 12
                  ? '${title.substring(0, 12)}...'
                  : title,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(width: 4),
            // 시작 시간
            Text(startTime, style: TextStyle(fontSize: 10, color: Colors.grey)),
            // 마침 시간
            Text(endTime, style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
        Container(
            height: 27,
            // 태블릿인지 모바일인지에 따라 타이틀이 차지할 넓이를 정해줌
            width: maxWidth > BreakPoint.tablet ? titleWidthTablet : titleWidthMobile,
            constraints: BoxConstraints(
              // 최대로 늘어날 넓이 설정
                maxWidth: 480
            ),
            decoration: BoxDecoration(
              color: tagColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            )),
      ]
  );
}

// 투두 타이머
Widget todoTimer(Color tagColor, double minWidth, int index, bool isPlay) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: minWidth,
    ),
    child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: tagColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5),
        ),
        // 타이머 실행 시킨 적이 있다면 플레이 시간을 보여주고, 아니라면 플레이 아이콘 표시
        child: isPlay ? todoPlayTime() : todoPlayIcon()),
  );
}


// 투두 플레이 타임 표시
Widget todoPlayTime() {
  return Center(
      child:
      Text('48:28', style: TextStyle(fontSize: 12, color: Colors.white)));
}


// 투두 플레이 아이콘 표시
Widget todoPlayIcon() {
  return GestureDetector(
      onTap: () {},
      child: Icon(
        CupertinoIcons.play_arrow_solid,
        color: Colors.white,
        size: 16,
      ));
}