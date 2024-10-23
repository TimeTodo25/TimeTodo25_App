import 'package:flutter/material.dart';

class CategoryColorList extends StatefulWidget {
  const CategoryColorList({super.key});

  @override
  State<CategoryColorList> createState() => _CategoryColorListState();
}

class _CategoryColorListState extends State<CategoryColorList> {
  List<Color> categoryColor = [
    Color(0xFF7E7DE7),
    Color(0xFFFF7A5D),
    Color(0xFF7DE7B7),
    Color(0xFFFFB339),
    Color(0xFF5E5CE5),
    Color(0xFFFF9F93),
    Color(0xFF89D2FF),
    Color(0xFFFFF159),
    Color(0xFFE47AFF),
    Color(0xFFFF7A5D),
    Color(0xFFFFA4C1),
    Color(0xFF89F258),
  ];

  // 선택한 컬러 정보를 저장할 변수
  int? selectedColorIndex;

  @override
  Widget build(BuildContext context) {
    // 버튼 리스트
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 1개의 행에 보여줄 item 개수
            crossAxisCount: 4,
            // 가로 세로 비율
            childAspectRatio: 3,
            // 수평 padding
            mainAxisSpacing: 10,
            // 수직 padding
            crossAxisSpacing: 10
        ),
        itemCount: categoryColor.length,
        itemBuilder: (BuildContext context, int index) {
          return categoryColorButton(categoryColor[index], () {
            selectedColorIndex = index;
          });
        });
  }
}

// 버튼 1개
Widget categoryColorButton(Color color, VoidCallback onTap) {
  return GestureDetector(
    child: Container(
      height: 30,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ]),
    ),
    onTap: onTap,
  );
}
