import 'package:equatable/equatable.dart';

sealed class CategoryListEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategoryList extends CategoryListEvent {}

class FetchCategoryList extends CategoryListEvent {}

class LoadCategoryColor extends CategoryListEvent {}


class GetCategoryColorByTodoIndex extends CategoryListEvent {
  final int todoIndex;
  GetCategoryColorByTodoIndex({required this.todoIndex});

  @override
  List<Object?> get props => [todoIndex];
}