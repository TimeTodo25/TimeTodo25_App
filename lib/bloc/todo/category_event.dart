import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {

  @override
  List<Object?> get props => [];
}

class OnSelectCategory extends CategoryEvent {
  final int index;
  final String categoryName;

  OnSelectCategory({
    required this.index,
    required this.categoryName
  });
}
