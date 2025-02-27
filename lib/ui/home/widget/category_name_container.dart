import 'package:flutter/material.dart';

class CategoryNameContainer extends StatelessWidget {
  final String categoryName;
  final Color categoryColor;
  final VoidCallback onTap;

  const CategoryNameContainer({super.key, required this.categoryName, required this.categoryColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 카테고리 이름
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
                const Icon(Icons.add, size: 14)
              ],
            ),
          ),
        )
      ],
    );
  }
}
