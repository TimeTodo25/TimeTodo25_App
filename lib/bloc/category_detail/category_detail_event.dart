import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

sealed class CategoryDetailEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategory extends CategoryDetailEvent {}

class AddNewCategory extends CategoryDetailEvent {
  final String title;

  AddNewCategory({
    required this.title,
  });

  @override
  List<Object?> get props => [title];
}

class SelectTodoCategory extends CategoryDetailEvent {
  final int index;
  final String? title;
  final Color? color;

  SelectTodoCategory({
    required this.index,
    this.title,
    this.color,
  });
}

class SelectEditingCategory extends CategoryDetailEvent {
  final int index;
  SelectEditingCategory({required this.index});
}

class EditCategory extends CategoryDetailEvent {
  final int index;
  final String title;

  EditCategory({
    required this.index,
    required this.title,
  });

  @override
  List<Object?> get props => [index, title];
}

class SelectVisibleRangeButton extends CategoryDetailEvent {
  final VisibilityOption publicStatus;

  SelectVisibleRangeButton({
    required this.publicStatus
  });

  @override
  List<Object?> get props => [publicStatus];
}

class SelectNewCategoryColor extends CategoryDetailEvent {
  final Color color;

  SelectNewCategoryColor({
    required this.color
  });

  @override
  List<Object?> get props => [color];
}

class SoftDeleteCategory extends CategoryDetailEvent {
  final int index;

  SoftDeleteCategory({required this.index});

  @override
  List<Object?> get props => [index];
}

class HardDeleteCategory extends CategoryDetailEvent {
  final int index;

  HardDeleteCategory({required this.index});

  @override
  List<Object?> get props => [index];
}

class GetCategoryColorAndTitleByIndex extends CategoryDetailEvent {
  final int index;

  GetCategoryColorAndTitleByIndex({required this.index});

  @override
  List<Object?> get props => [index];
}

class GetCategoryInfo extends CategoryDetailEvent {
  final Color color;
  final String title;

  GetCategoryInfo({required this.color, required this.title});
}
