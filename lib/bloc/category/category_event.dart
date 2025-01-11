import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

sealed class CategoryEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategory extends CategoryEvent {}

class AddNewCategory extends CategoryEvent {
  final String name;

  AddNewCategory({
    required this.name,
  });

  @override
  List<Object?> get props => [name];
}

class SelectTodoCategory extends CategoryEvent {
  final int index;
  final String name;
  final Color color;

  SelectTodoCategory({
    required this.index,
    required this.name,
    required this.color,
  });
}

class UpdateCategory extends CategoryEvent {
  final String name;
  final Color color;
  final VisibilityOption publicStatus;

  UpdateCategory({
    required this.name,
    required this.color,
    required this.publicStatus
  });

  @override
  List<Object?> get props => [name, color, publicStatus];
}

class SelectVisibleRangeButton extends CategoryEvent {
  final VisibilityOption publicStatus;

  SelectVisibleRangeButton({
    required this.publicStatus
  });

  @override
  List<Object?> get props => [publicStatus];
}

class SelectNewCategoryColor extends CategoryEvent {
  final Color color;

  SelectNewCategoryColor({
    required this.color
  });

  @override
  List<Object?> get props => [color];
}