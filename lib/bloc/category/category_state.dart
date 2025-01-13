import 'dart:ui';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

enum CategoryStatus { initial, selected, updated, loaded, failed }

class CategoryState {
  int? index;
  List<CategoryModel> categories;
  final CategoryStatus status;
  String categoryName;
  Color color;
  VisibilityOption publicStatus;

  CategoryState({this.index,
    required this.categories,
    required this.status,
    this.categoryName = '운동',
    this.color = mainBlue,
    this.publicStatus = VisibilityOption.public
  });

  CategoryState copyWith({
    int? index,
    List<CategoryModel>? categories,
    CategoryStatus? status,
    String? categoryName,
    Color? color,
    VisibilityOption? publicStatus,
  }) {
    return CategoryState(
        index: index ?? this.index,
        status: status ?? this.status,
        categoryName: categoryName ?? this.categoryName,
        color: color ?? this.color,
        publicStatus: publicStatus ?? this.publicStatus,
        categories: categories ?? this.categories
    );
  }
}
