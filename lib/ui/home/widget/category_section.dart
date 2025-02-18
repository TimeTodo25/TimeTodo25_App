import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/widget/category_todo_list.dart';
import 'package:time_todo/ui/home/widget/category_name_container.dart';

class CategorySection extends StatelessWidget {
  final int categoryIdx;
  final String categoryName;
  final Color categoryColor;
  final VoidCallback onTap;

  // device 의 width 크기
  final double maxWidth;

  const CategorySection({
    super.key,
    required this.categoryIdx,
    required this.categoryName,
    required this.categoryColor,
    required this.maxWidth,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      // expansionTile 의 기본 border 없애기
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      // 카테고리별 타일
      child: ExpansionTile(
        // expansionTile 의 기본 패딩 제거
        tilePadding: const EdgeInsets.all(0),
        collapsedIconColor: Colors.grey,
        initiallyExpanded: true,
        // 카테고리 이름
        title: CategoryNameContainer(
            categoryName: categoryName, categoryColor: categoryColor, onTap: onTap
        ),
        // 각 카테고리에 해당하는 투두 리스트
        children: [
          CategoryTodoList(
            categoryIdx: categoryIdx,
              maxWidth: maxWidth,
              categoryColor: categoryColor
          ),
        ],
      ),
    );
  }
}