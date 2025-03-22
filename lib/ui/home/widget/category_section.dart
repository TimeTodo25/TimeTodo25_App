import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/bloc/todo_list/todo_list_state.dart';
import 'package:time_todo/ui/home/widget/category_todo_list.dart';
import 'package:time_todo/ui/home/widget/category_name_container.dart';

class CategorySection extends StatefulWidget {
  final int categoryIdx;
  final String categoryName;
  final Color categoryColor;
  final VoidCallback onTap;

  // device 의 width 크기
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
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListBloc, TodoListState>(
      builder: (context, state) {
        return Theme(
          // expansionTile 의 기본 border 없애기
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          // 카테고리별 타일
          child: ExpansionTile(
            // expansionTile 의 기본 패딩 제거
            tilePadding: const EdgeInsets.all(0),
            collapsedIconColor: Colors.grey,
            initiallyExpanded: true,
            // 카테고리 이름
            title: CategoryNameContainer(
                categoryName: widget.categoryName,
                categoryColor: widget.categoryColor,
                onTap: widget.onTap
            ),
            // 각 카테고리에 해당하는 투두 리스트
            children: [
              CategoryTodoList(
                categoryIdx: widget.categoryIdx,
                categoryColor: widget.categoryColor,
                categoryTodos: state.categoryTodos[widget.categoryIdx] ?? [], // 카테고리별 투두 전달
                maxWidth: widget.maxWidth,
              ),
            ],
          ),
        );
      }
    );
  }
}