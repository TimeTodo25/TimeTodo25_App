import 'dart:ui';

import 'package:time_todo/assets/colors/color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

enum CategoryStatus { initial, updated }

@freezed
class CategoryState with _$CategoryState {
  factory CategoryState({
    @Default(CategoryStatus.initial) CategoryStatus status,
    @Default(0) int index,
    @Default('운동') String name,
    @Default(mainBlue) Color color
  }) = _CategoryState;
}