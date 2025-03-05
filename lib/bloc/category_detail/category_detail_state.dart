import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

enum CategoryDetailStatus { initial, editing, updated, loaded, failed, loading }

class CategoryDetailState extends Equatable {
  final int? index; // 현재 카테고리의 인덱스
  final String title;
  final Color color;
  final VisibilityOption publicStatus;
  final CategoryDetailStatus status;

  const CategoryDetailState({
    this.index,
    this.title = '',
    this.color = mainBlue,
    this.publicStatus = VisibilityOption.public,
    required this.status,
  });

  CategoryDetailState copyWith({
    int? index,
    String? title,
    Color? color,
    VisibilityOption? publicStatus,
    List<CategoryModel>? categories,
    CategoryDetailStatus? status,
  }) {
    return CategoryDetailState(
      index: index ?? this.index,
      title: title ?? this.title,
      color: color ?? this.color,
      publicStatus: publicStatus ?? this.publicStatus,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [title, color, publicStatus, status];
}
