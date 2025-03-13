import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/repository/todo_repository.dart';
import 'package:time_todo/ui/utils/color_utils.dart';

import 'category_list_event.dart';
import 'category_list_state.dart';

// 여러 카테고리 상태관리
class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc()
      : super(const CategoryListState(
            status: CategoryListStatus.initial, categories: [])) {
    on<InitCategoryList>(_initCategoryList);
    on<FetchCategoryList>(_onFetchCategory);
    on<GetCategoryColorByTodoIndex>(_getCategoryColorByTodoIndex);
    on<UpdateSelectedIndex>(_updateSelectedIndex);
  }

  void _initCategoryList(
      InitCategoryList event, Emitter<CategoryListState> emit) {
    emit(state.copyWith(status: CategoryListStatus.initial, categories: []));
  }

  Future<void> _onFetchCategory(
      FetchCategoryList event, Emitter<CategoryListState> emit) async {
    try {
      final categories = await CategoryRepository.getValidCategories();

      if (categories.isEmpty) {
        return emit(state.copyWith(status: CategoryListStatus.initial));
      }
      emit(state.copyWith(
          status: CategoryListStatus.loaded, categories: categories));
    } catch (e) {
      emit(state.copyWith(status: CategoryListStatus.failed));
    }
  }

  Future<void> _getCategoryColorByTodoIndex(GetCategoryColorByTodoIndex event,
      Emitter<CategoryListState> emit) async {
    emit(state.copyWith(status: CategoryListStatus.loading));
    try {
      final todo = await TodoRepository.getTodoByIndex(event.todoIndex);
      if (todo == null) return;

      final category =
          await CategoryRepository.getCategoryByIndex(todo.categoryIdx);
      if (category == null) return;

      final categoryColor = ColorUtil.getColorFromName(category.categoryColor);

      // Update state with new color in the map
      final Map<int, Color> updatedColorMap = Map.from(state.todoColorMap);
      updatedColorMap[event.todoIndex] = categoryColor;

      emit(state.copyWith(todoColorMap: updatedColorMap));
    } catch (e) {
      emit(state.copyWith(status: CategoryListStatus.failed));
    }
  }

  void _updateSelectedIndex(
      UpdateSelectedIndex event, Emitter<CategoryListState> emit) {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
  }
}
