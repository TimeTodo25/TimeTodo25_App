import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/widget/category_and_todo_list.dart';

class CategorySection extends StatelessWidget {
  final String categoryName;
  final Color categoryColor;
  final int categoryItemCount;
  final VoidCallback onTap;

  // device 의 width 크기
  final double maxWidth;

  const CategorySection({
    super.key,
    required this.categoryName,
    required this.categoryColor,
    required this.categoryItemCount,
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
                    Text(categoryName, style: TextStyle(color: categoryColor, fontFamily:'pretendardSemiBold', fontSize: 14),),
                    Icon(Icons.add, size: 14)
                  ],
                ),
              ),
            )
          ],
        ),
        children: [
          CategoryAndTodoList(
              maxWidth: maxWidth,
              categoryItemCount: categoryItemCount,
              categoryColor: categoryColor),
        ],
      ),
    );
  }
}