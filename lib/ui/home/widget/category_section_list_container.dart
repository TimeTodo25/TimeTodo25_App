import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'category_section.dart';

class CategorySectionListContainer extends StatefulWidget {
  final double deviceWidth;

  const CategorySectionListContainer({required this.deviceWidth, super.key});

  @override
  State<CategorySectionListContainer> createState() =>
      _CategorySectionListContainerState();
}

class _CategorySectionListContainerState
    extends State<CategorySectionListContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        child: BlocBuilder<CategoryListBloc, CategoryListState>(
            builder: (context, categoryState) {
          // 현재 카테고리 개수만큼 CategorySection 생성
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: categoryState.categories.length,
            itemBuilder: (context, index) {
              final dbIndex = index + 1;
              final category = categoryState.categories[index];
              final categoryColor =
                  ColorUtil.getColorFromName(category.categoryColor);

              return CategorySection(
                categoryIdx: category.idx ?? 1,
                categoryName: category.title,
                categoryColor: categoryColor,
                maxWidth: widget.deviceWidth,
                onTap: () {
                  // 투두 추가 화면으로 이동
                  context.router.push(TodoAddRoute(
                      categoryIdx: dbIndex,
                      categoryColor: categoryColor,
                      categoryName: category.title));
                },
              );
            },
          );
        }));
  }
}
