import 'dart:ui';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

enum CategoryStatus { initial, selected, updated }

class CategoryState {
  int? index;
  final CategoryStatus status;
  String categoryName;
  Color color;
  VisibilityOption publicStatus;

  CategoryState({
    required this.status,
    this.index,
    this.categoryName = '운동',
    this.color = mainBlue,
    this.publicStatus = VisibilityOption.public
  });

  CategoryState copyWith({
    int? index,
    CategoryStatus? status,
    String? name,
    Color? color,
    VisibilityOption? publicStatus
  }) {
    return CategoryState(
      index: index ?? this.index,
      status: status ?? this.status,
      categoryName: name ?? this.categoryName,
      color: color ?? this.color,
      publicStatus: publicStatus ?? this.publicStatus
    );
  }
}