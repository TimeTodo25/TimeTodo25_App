import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

enum CategoryStatus { initial, editing, updated, loaded, failed, loading }

class CategoryState extends Equatable {
  final int? index;
  final String title;
  final Color color;
  final VisibilityOption publicStatus;
  final List<CategoryModel> categories;
  final CategoryStatus status;

  const CategoryState({
    this.index,
    this.title = '',
    this.color = mainBlue,
    this.publicStatus = VisibilityOption.public,
    required this.categories,
    required this.status,
  });

  CategoryState copyWith({
    int? index,
    String? title,
    Color? color,
    VisibilityOption? publicStatus,
    List<CategoryModel>? categories,
    CategoryStatus? status,
  }) {
    return CategoryState(
      index: index ?? this.index,
      title: title ?? this.title,
      color: color ?? this.color,
      publicStatus: publicStatus ?? this.publicStatus,
      status: status ?? this.status,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object?> get props => [title, color, publicStatus, status];
}
