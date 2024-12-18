import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/todo/category_event.dart';
import 'package:time_todo/bloc/todo/category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(): super(const CategoryState()){
    on<OnSelectCategory>(_onSelectedTodoCategory);
  }

  void _onSelectedTodoCategory(
      OnSelectCategory event, Emitter<CategoryState> emit) {
    emit(CategoryState(index: event.index, categoryName: event.categoryName));
  }
}
