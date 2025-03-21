import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/repository/todo_repository.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'category_detail_event.dart';
import 'category_detail_state.dart';

// 1개의 카테고리 상태관리
class CategoryDetailBloc extends Bloc<CategoryDetailEvent, CategoryDetailState> {
  final categoryRepo = CategoryRepository();

  CategoryDetailBloc() : super(CategoryDetailState(status: CategoryDetailStatus.initial)) {
    on<InitCategory>(_initCategory);
    on<SelectTodoCategory>(_selectTodoCategory);
    on<EditCategory>(_onEditCategory);
    on<SelectVisibleRangeButton>(_selectVisibleRange);
    on<AddNewCategory>(_addNewCategory);
    on<SelectNewCategoryColor>(_selectNewCategoryColor);
    on<SelectEditingCategory>(_onSelectEditingCategory);
    on<DeleteCategory>(_onDeleteCategory);
    on<GetCategoryInfo>(_getCategoryInfo);
    on<GetCategoryColorAndTitleByIndex>(_getCategoryColorAndTitleByIndex);
  }

  void _initCategory(InitCategory event, Emitter<CategoryDetailState> emit) {
    emit(state.copyWith(
      status: CategoryDetailStatus.initial,
      index: 0,
      title: '',
      color: mainBlue,
      publicStatus: VisibilityOption.public
    ));
  }

  void _addNewCategory(AddNewCategory event, Emitter<CategoryDetailState> emit) {
    final CategoryModel newCategory = CategoryModel(
        title: event.title,
        userName: 'test_user',
        categoryColor: ColorUtil.colorToString(state.color),
        publicStatus: state.publicStatus,
        createDt: DateTime.now()
    );

    categoryRepo.insertCategory(newCategory);
     emit(state.copyWith(status: CategoryDetailStatus.updated));
  }

  void _selectTodoCategory(SelectTodoCategory event, Emitter<CategoryDetailState> emit) {
    emit(state.copyWith(
        status: CategoryDetailStatus.editing,
        index: event.index,
        title: event.title,
        color: event.color));
  }

  void _selectVisibleRange(SelectVisibleRangeButton event, Emitter<CategoryDetailState> emit) {
    emit(state.copyWith(publicStatus: event.publicStatus));
  }

  void _selectNewCategoryColor(SelectNewCategoryColor event, Emitter<CategoryDetailState> emit) {
    emit(state.copyWith(color: event.color));
  }

  Future<void> _onSelectEditingCategory(SelectEditingCategory event, Emitter<CategoryDetailState> emit) async {
    try {
      final editingCategory = await categoryRepo.getCategoryByIndex(event.index);

      if(editingCategory != null) {
        emit(state.copyWith(
          title: editingCategory.title,
          publicStatus: editingCategory.publicStatus,
          color: ColorUtil.getColorFromName(editingCategory.categoryColor),
          status: CategoryDetailStatus.loaded,
        ));
      }
    } catch (e) {
      print("_onGetEditCategory 중 에러 발생 $e");
      emit(state.copyWith(status: CategoryDetailStatus.failed));
    }
  }


  Future<void> _onEditCategory(EditCategory event, Emitter<CategoryDetailState> emit) async {
    try {
      final newCategory = CategoryModel(
          idx: event.index,
          title: event.title,
          userName: 'test_user',
          categoryColor: ColorUtil.colorToString(state.color),
          publicStatus: state.publicStatus
      );

      // DB 업데이트
      await categoryRepo.updateCategoryIfChanged(newCategory);

      // 수정 후 DB에서 최신 데이터를 다시 가져오기
      final updatedCategory = await categoryRepo.getAllCategory();
      emit(state.copyWith(status: CategoryDetailStatus.updated, categories: updatedCategory));
    } catch (e) {
      emit(state.copyWith(status: CategoryDetailStatus.failed));
      print("Category 수정 저장 중 에러 발생 $e");
    }
  }

  Future<void> _onDeleteCategory(DeleteCategory event, Emitter<CategoryDetailState> emit) async {
    try {
      await categoryRepo.deleteCategoryByIndex(event.index);

      final updatedCategory = await categoryRepo.getAllCategory();
      emit(state.copyWith(status: CategoryDetailStatus.updated, categories: updatedCategory));
    } catch (e) {
      emit(state.copyWith(status: CategoryDetailStatus.failed));
      print("Category 삭제 중 에러 발생 $e");
    }
  }

  Future<void> _getCategoryColorAndTitleByIndex(GetCategoryColorAndTitleByIndex event, Emitter<CategoryDetailState> emit) async {
    try {
      final categoryInfo = await categoryRepo.getCategoryByIndex(event.index);

      if(categoryInfo != null) {
        emit(state.copyWith(
          index: event.index,
            status: CategoryDetailStatus.updated,
            color: ColorUtil.getColorFromName(categoryInfo.categoryColor),
            title: categoryInfo.title,
        ));
      }
    } catch (e) {
      emit(state.copyWith(status: CategoryDetailStatus.failed));
      print("_getCategoryColorByIndex 중 에러 발생 $e");
    }
  }

  void _getCategoryInfo(GetCategoryInfo event, Emitter<CategoryDetailState> emit) {
   emit(state.copyWith(color: event.color, title: event.title, status: CategoryDetailStatus.updated));
  }
}
