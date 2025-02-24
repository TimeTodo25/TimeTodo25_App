import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';

sealed class CategoryListEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategoryList extends CategoryListEvent {}

class FetchCategoryList extends CategoryListEvent {}

// class AddNewCategory extends CategoryListEvent {
//   final String title;
//
//   AddNewCategory({
//     required this.title,
//   });
//
//   @override
//   List<Object?> get props => [title];
// }

// class SelectTodoCategory extends CategoryListEvent {
//   final int index;
//   final String title;
//   final Color color;
//
//   SelectTodoCategory({
//     required this.index,
//     required this.title,
//     required this.color,
//   });
// }
//
// class SelectEditingCategory extends CategoryListEvent {
//   final int index;
//   SelectEditingCategory({required this.index});
// }
//
// class EditCategory extends CategoryListEvent {
//   final int index;
//   final String title;
//
//   EditCategory({
//     required this.index,
//     required this.title,
//   });
//
//   @override
//   List<Object?> get props => [index, title];
// }
//
// class SelectVisibleRangeButton extends CategoryListEvent {
//   final VisibilityOption publicStatus;
//
//   SelectVisibleRangeButton({
//     required this.publicStatus
//   });
//
//   @override
//   List<Object?> get props => [publicStatus];
// }
//
// class SelectNewCategoryColor extends CategoryListEvent {
//   final Color color;
//
//   SelectNewCategoryColor({
//     required this.color
//   });
//
//   @override
//   List<Object?> get props => [color];
// }
//
// class DeleteCategory extends CategoryListEvent {
//   final int index;
//
//   DeleteCategory({required this.index});
// }
//
// class GetCategoryColorAndTitleByIndex extends CategoryListEvent {
//   final int index;
//
//   GetCategoryColorAndTitleByIndex({required this.index});
// }
//
// class GetCategoryInfo extends CategoryListEvent {
//   final Color color;
//   final String title;
//
//   GetCategoryInfo({required this.color, required this.title});
// }
//
// class GetCategoryColorByTodoIndex extends CategoryListEvent {
//   final int todoIndex;
//   GetCategoryColorByTodoIndex({required this.todoIndex});
//
//   @override
//   List<Object?> get props => [todoIndex];
// }