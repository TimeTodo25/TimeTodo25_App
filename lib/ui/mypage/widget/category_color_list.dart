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
    Color(0xFFFF9C39),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 1개의 행에 보여줄 item 개수
            crossAxisCount: 4,
          // 가로 세로 비율
          // childAspectRatio: 1,
            childAspectRatio: 4,
            // 수평 padding
            mainAxisSpacing: 10,
          // 수직 padding
          crossAxisSpacing: 10
        ),
        itemCount: categoryColor.length,
        itemBuilder: (BuildContext context, int index) {
          return categoryColorButton(categoryColor[index]);
        });
  }
}

Widget categoryColorButton(Color color) {
  return Container(
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
        ]
    ),
  );
}