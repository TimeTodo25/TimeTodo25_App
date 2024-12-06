import 'package:flutter/material.dart';
import 'package:time_todo/ui/mypage/category/widget/category_list_tile.dart';

import '../../../assets/colors/color.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';

class TodoCategoryList extends StatefulWidget {
  const TodoCategoryList({super.key});

  @override
  State<TodoCategoryList> createState() => _TodoCategoryListState();
}

class _TodoCategoryListState extends State<TodoCategoryList> {
  List<String> categoryList = ['운동', '할일', '청소', '공부'
      '운동', '할일', '청소', '공부',
    '운동', '할일', '청소', '공부',
    '운동', '할일', '청소', '공부'

  ];
  Color themeColor = mainBlue;

  @override
  Widget build(BuildContext context) {
    String title1 = '등록한 순으로 정렬';
    String title2 = '완료한 TODO 뒤로 정렬';

    return Scaffold(
        appBar: MainAppBar(
          title: '카테고리',
          backOnTap: () {
            Navigator.pop(context);
          },
        ),
        body: ResponsiveCenter(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: CategoryListTile(),
                     // child: makeListTile(categoryList, themeColor),
                  ),
                ),
              ],
            )));
  }
}