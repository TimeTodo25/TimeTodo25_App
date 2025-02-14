import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

sealed class CategoryEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategory extends CategoryEvent {}

class FetchCategory extends CategoryEvent {}

class AddNewCategory extends CategoryEvent {
  final String title;

  AddNewCategory({
    required this.title,
  });

  @override
  List<Object?> get props => [title];
}

class SelectTodoCategory extends CategoryEvent {
  final int index;
  final String title;
  final Color color;

  SelectTodoCategory({
    required this.index,
    required this.title,
    required this.color,
  });
}

class SelectEditingCategory extends CategoryEvent {
  final int index;
  SelectEditingCategory({required this.index});
}

class EditCategory extends CategoryEvent {
  final int index;
  final String title;

  EditCategory({
    required this.index,
    required this.title,
  });

  @override
  List<Object?> get props => [index, title];
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

class DeleteCategory extends CategoryEvent {
  final int index;

  DeleteCategory({required this.index});
}

class GetCategoryColorAndTitleByIndex extends CategoryEvent {
  final int index;

  GetCategoryColorAndTitleByIndex({required this.index});
}

class GetCategoryInfo extends CategoryEvent {
  final Color color;
  final String title;

  GetCategoryInfo({required this.color, required this.title});
}