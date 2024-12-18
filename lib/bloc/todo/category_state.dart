import 'package:equatable/equatable.dart';

class CategoryState extends Equatable {
  final int index;
  final String categoryName;

  const CategoryState({
    this.index = 0,
    this.categoryName = '운동',
  });

  @override
  List<Object?> get props => [ index, categoryName ];
}