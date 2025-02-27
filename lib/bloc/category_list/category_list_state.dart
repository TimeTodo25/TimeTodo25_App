import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

import '../../entity/calendar/category_calendar_data.dart';

enum CategoryListStatus { initial, loading, loaded, failed }

class CategoryListState extends Equatable {
  final CategoryListStatus status;
  final List<CategoryModel> categories;
  final Map<int, Color> todoColorMap; // Map to store todo index -> color mapping
  final int selectedIndex; // 리스트 중 선택된 인덱스


  const CategoryListState({
    required this.status,
    required this.categories,
    this.todoColorMap = const {},
    this.selectedIndex = 1
  });

  CategoryListState copyWith({
    CategoryListStatus? status,
    List<CategoryModel>? categories,
    Map<int, Color>? todoColorMap,
    int? selectedIndex,
  }) {
    return CategoryListState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      todoColorMap: todoColorMap ?? this.todoColorMap,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props => [status, categories, todoColorMap, selectedIndex];
}
