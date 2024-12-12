import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {

  @override
  List<Object?> get props => [];
}

class OnSelectCategory extends CategoryEvent {
  final int index;

  OnSelectCategory({required this.index});
}
