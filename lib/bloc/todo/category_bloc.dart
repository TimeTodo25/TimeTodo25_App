import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/todo/category_event.dart';
import 'package:time_todo/bloc/todo/category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState()) {
    on<UpdateCategory>(_updateCategory);
    on<InitCategory>(_initCategory);
  }


  void _initCategory(InitCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      status: CategoryStatus.initial,
      index: 0,
      name: '운동',
      color: mainBlue
    ));
  }

  void _updateCategory(
      UpdateCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        status: CategoryStatus.updated,
        index: event.index,
        name: event.name,
        color: event.color));
  }
}
