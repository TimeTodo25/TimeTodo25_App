import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category/category_event.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import '../../../../bloc/category/category_bloc.dart';

class CategoryColorList extends StatefulWidget {
  const CategoryColorList({super.key});

  @override
  State<CategoryColorList> createState() => _CategoryColorListState();
}

class _CategoryColorListState extends State<CategoryColorList> {
  void _onSelectNewCategoryColor(CategoryColor value) {
    context.read<CategoryBloc>().add(
        SelectNewCategoryColor(color: value.color)
    );
  }

  @override
  Widget build(BuildContext context) {
    // 버튼 리스트
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 1개의 행에 보여줄 item 개수
            crossAxisCount: 4,
            // 가로 세로 비율
            childAspectRatio: 2.5,
            // 수평 padding
            mainAxisSpacing: 10,
            // 수직 padding
            crossAxisSpacing: 10
        ),
        itemCount: CategoryColor.values.length,
        itemBuilder: (BuildContext context, int index) {
          return categoryColorButton(CategoryColor.values[index], () {
            _onSelectNewCategoryColor(CategoryColor.values[index]);
          });
        });
  }
}

// 버튼 1개
Widget categoryColorButton(CategoryColor categoryColor, VoidCallback onTap) {
  return GestureDetector(
    child: Container(
      height: 30,
      decoration: BoxDecoration(
          color: categoryColor.color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    onTap: onTap,
  );
}
