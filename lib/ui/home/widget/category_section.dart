import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_state.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/home/widget/category_todo_list.dart';
import 'package:time_todo/ui/home/widget/category_name_container.dart';

class CategorySection extends StatelessWidget {
  final int categoryIdx;
  final String categoryName;
  final Color categoryColor;
  final VoidCallback onTap;
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
    return BlocSelector<TodoListBloc, TodoListState, List<Todo>>(
      selector: (state) => state.categoryTodos[categoryIdx] ?? [],
      builder: (context, todos) {
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.all(0),
            collapsedIconColor: Colors.grey,
            initiallyExpanded: true,
            title: CategoryNameContainer(
              categoryName: categoryName,
              categoryColor: categoryColor,
              onTap: onTap,
            ),
            children: [
              CategoryTodoList(
                categoryIdx: categoryIdx,
                categoryColor: categoryColor,
                categoryTodos: todos,
                maxWidth: maxWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}