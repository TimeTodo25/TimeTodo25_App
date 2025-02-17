import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/category/category_state.dart';
import 'package:time_todo/ui/todo/screen/todo_add_screen.dart';
import 'package:time_todo/ui/utils/color_utils.dart';

import 'category_section.dart';

class CategoryTodoContainer extends StatelessWidget {
  final double deviceWidth;
  const CategoryTodoContainer({required this.deviceWidth, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, categoryState) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: categoryState.categories.length,
            itemBuilder: (context, index) {
              final category = categoryState.categories[index];
              final categoryColor = ColorUtil.getColorFromName(category.categoryColor);

              return CategorySection(
                categoryName: category.title,
                categoryColor: categoryColor,
                categoryItemCount: 5,
                maxWidth: deviceWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TodoAddScreen(
                        categoryIdx: index,
                        categoryName: category.title,
                        categoryColor: categoryColor,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}