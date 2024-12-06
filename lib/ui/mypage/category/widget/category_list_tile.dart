import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/category/widget/category_tile.dart';

class CategoryListTile extends StatefulWidget {
  const CategoryListTile({super.key});

  @override
  State<CategoryListTile> createState() => _MyPageCategoryButtonState();
}

class _MyPageCategoryButtonState extends State<CategoryListTile> {
  // 임시 데이터
  List<String> categoryList = [
    '운동', '할일', '청소', '공부', '운동', '할일', '청소', '공부', '운동',
    '할일', '청소', '공부', '운동', '할일', '청소', '공부'
  ];

  // textColor
  Color themeColor = mainBlue;
  double height = 500;

  @override
  void didChangeDependencies() {
    height = MediaQuery
        .of(context)
        .size
        .height * 0.7;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        clipBehavior: Clip.none,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          String title = categoryList[index];
          return Column(children: [
            // 타일 사이 간격
            const SizedBox(
              height: 15,
            ),
            // 카테고리 타일 1개
            CategoryTile(
                title: title,
                themeColor: themeColor,
                backgroundColor: Colors.white,
                // 그림자
                boxShadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(0, 1),
                ))
          ]);
        });
  }
}