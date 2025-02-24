import 'package:equatable/equatable.dart';

sealed class CategoryListEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategoryList extends CategoryListEvent {}

class FetchCategoryList extends CategoryListEvent {}

class LoadCategoryColor extends CategoryListEvent {}