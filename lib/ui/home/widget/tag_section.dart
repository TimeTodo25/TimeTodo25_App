import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/widget/tag_todo_list.dart';

class TagSection extends StatelessWidget {
  final String tagName;
  final Color tagColor;
  final int tagItemCount;
  final VoidCallback onTap;

  // device 의 width 크기
  final double maxWidth;

  const TagSection({
    super.key,
    required this.tagName,
    required this.tagColor,
    required this.tagItemCount,
    required this.maxWidth,
    required this.onTap
  });

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
            InkWell(
              onTap: onTap,
              child: Container(
                // 태그 표시 컨테이너
                width: 75,
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
                    Text(tagName, style: TextStyle(color: tagColor, fontFamily:'pretendardSemiBold', fontSize: 14),),
                    Icon(Icons.add, size: 14)
                  ],
                ),
              ),
            )
          ],
        ),
        children: [
          TagTodoList(
              maxWidth: maxWidth,
              tagItemCount: tagItemCount,
              tagColor: tagColor),
        ],
      ),
    );
  }
}