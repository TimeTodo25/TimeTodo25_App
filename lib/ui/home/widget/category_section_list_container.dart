import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'category_section.dart';

class CategorySectionListContainer extends StatelessWidget {
  final double deviceWidth;

  const CategorySectionListContainer({required this.deviceWidth, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CategoryListBloc, CategoryListState, List<CategoryModel>>(
      selector: (state) => state.categories,
      builder: (context, categories) {
        // 현재 카테고리 개수만큼 CategorySection 생성
        return SizedBox(
          height: 500,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              final categoryColor = ColorUtil.getColorFromName(category.categoryColor);

              return CategorySection(
                categoryIdx: category.idx ?? 1,
                categoryName: category.title,
                categoryColor: categoryColor,
                maxWidth: deviceWidth,
                onTap: () {
                  // 투두 추가 화면으로 이동
                  context.router.push(TodoAddRoute(
                    categoryIdx: category.idx ?? 1,
                    categoryColor: categoryColor,
                    categoryName: category.title,
                  ));
                },
              );
            },
          ),
        );
      },
    );
  }
}