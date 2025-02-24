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

  const CategoryListState({
    required this.status,
    required this.categories,
  });

  CategoryListState copyWith({
    CategoryListStatus? status,
    List<CategoryModel>? categories,
    List<CategoryCalendarData>? calendarData,
  }) {
    return CategoryListState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object?> get props => [status, categories];
}
