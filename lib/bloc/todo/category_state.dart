import 'package:equatable/equatable.dart';

abstract class CategoryState extends Equatable {
  @override
  List<Object?> get props => [];
}
class CategoryInitial extends CategoryState {
  static const int index = 0;
}

class HasSelectedCategory extends CategoryState {
  final int index;

  @override
  List<Object?> get props => [index];

  HasSelectedCategory({required this.index});
}