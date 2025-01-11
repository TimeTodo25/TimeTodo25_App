import 'dart:ui';

import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {

  @override
  List<Object?> get props => [];
}
class InitCategory extends CategoryEvent {}

class UpdateCategory extends CategoryEvent {
  final int index;
  final String name;
  final Color color;

  UpdateCategory({
    required this.index,
    required this.name,
    required this.color,
  });
}
