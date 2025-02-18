import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'category_event.dart';
import 'category_state.dart';


class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState(status: CategoryStatus.initial, categories: [])) {
    on<InitCategory>(_initCategory);
    on<FetchCategory>(_onFetchCategory);
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

  void _initCategory(InitCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      status: CategoryStatus.initial,
      index: 0,
      title: '',
      color: mainBlue,
      publicStatus: VisibilityOption.public
    ));
  }

  void _addNewCategory(AddNewCategory event, Emitter<CategoryState> emit) {
    final CategoryModel newCategory = CategoryModel(
        title: event.title,
        userName: 'test_user',
        categoryColor: ColorUtil.colorToString(state.color),
        publicStatus: state.publicStatus,
        createDt: DateTime.now()
    );

     CategoryRepository.insertCategory(newCategory);
     emit(state.copyWith(status: CategoryStatus.updated));
  }

  void _selectTodoCategory(SelectTodoCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        status: CategoryStatus.editing,
        index: event.index,
        title: event.title,
        color: event.color));
  }

  void _selectVisibleRange(SelectVisibleRangeButton event, Emitter<CategoryState> emit) {
    emit(state.copyWith(publicStatus: event.publicStatus));
  }

  void _selectNewCategoryColor(SelectNewCategoryColor event, Emitter<CategoryState> emit) {
    emit(state.copyWith(color: event.color));
  }

  Future<void> _onFetchCategory(FetchCategory event, Emitter<CategoryState> emit) async {
    try {
      final categories = await CategoryRepository.getValidCategories();

      if(categories.isEmpty) {
        return emit(state.copyWith(status: CategoryStatus.initial));
      }
      emit(state.copyWith(status: CategoryStatus.loaded, categories: categories));

    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.failed));
    }
  }

  Future<void> _onSelectEditingCategory(SelectEditingCategory event, Emitter<CategoryState> emit) async {
    try {
      final editingCategory = await CategoryRepository.getCategoryByIndex(event.index);

      if(editingCategory != null) {
        emit(state.copyWith(
          title: editingCategory.title,
          publicStatus: editingCategory.publicStatus,
          color: ColorUtil.getColorFromName(editingCategory.categoryColor),
          status: CategoryStatus.loaded,
        ));
      }
    } catch (e) {
      print("_onGetEditCategory 중 에러 발생 $e");
      emit(state.copyWith(status: CategoryStatus.failed));
    }
  }


  Future<void> _onEditCategory(EditCategory event, Emitter<CategoryState> emit) async {
    try {
      final newCategory = CategoryModel(
          idx: event.index,
          title: event.title,
          userName: 'test_user',
          categoryColor: ColorUtil.colorToString(state.color),
          publicStatus: state.publicStatus
      );

      // DB 업데이트
      await CategoryRepository.updateCategoryIfChanged(newCategory);

      // 수정 후 DB에서 최신 데이터를 다시 가져오기
      final updatedCategory = await CategoryRepository.getAllCategory();
      emit(state.copyWith(status: CategoryStatus.updated, categories: updatedCategory));
    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.failed));
      print("Category 수정 저장 중 에러 발생 $e");
    }
  }

  Future<void> _onDeleteCategory(DeleteCategory event, Emitter<CategoryState> emit) async {
    try {
      await CategoryRepository.deleteCategoryByIndex(event.index);

      final updatedCategory = await CategoryRepository.getAllCategory();
      emit(state.copyWith(status: CategoryStatus.updated, categories: updatedCategory));
    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.failed));
      print("Category 삭제 중 에러 발생 $e");
    }
  }

  Future<void> _getCategoryColorAndTitleByIndex(GetCategoryColorAndTitleByIndex event, Emitter<CategoryState> emit) async {
    try {
      final categoryInfo = await CategoryRepository.getCategoryByIndex(event.index);

      if(categoryInfo != null) {
        emit(state.copyWith(
            status: CategoryStatus.updated,
            color: ColorUtil.getColorFromName(categoryInfo.categoryColor),
            title: categoryInfo.title,
        ));
      }
    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.failed));
      print("_getCategoryColorByIndex 중 에러 발생 $e");
    }
  }

  void _getCategoryInfo(GetCategoryInfo event, Emitter<CategoryState> emit) {
   emit(state.copyWith(color: event.color, title: event.title, status: CategoryStatus.updated));
  }
}
