import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'category_event.dart';
import 'category_state.dart';


class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(
      CategoryState(status: CategoryStatus.initial, categories: [])) {
    on<InitCategory>(_initCategory);
    on<FetchCategory>(_onFetchCategory);
    on<SelectTodoCategory>(_selectTodoCategory);
    on<UpdateCategory>(_updateCategory);
    on<SelectVisibleRangeButton>(_selectVisibleRange);
    on<AddNewCategory>(_addNewCategory);
    on<SelectNewCategoryColor>(_selectNewCategoryColor);
  }

  void _initCategory(InitCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      status: CategoryStatus.initial,
      index: 0,
      name: '운동',
      color: mainBlue,
      publicStatus: VisibilityOption.public
    ));
  }

  void _addNewCategory(AddNewCategory event, Emitter<CategoryState> emit) {
    final CategoryModel newCategory = CategoryModel(
        title: event.title,
        userName: state.categoryName,
        categoryColor: ColorUtil.colorToString(state.color),
        publicStatus: state.publicStatus,
        createDt: DateTime.now()
    );

     CategoryRepository.insertCategory(newCategory);
     emit(state.copyWith(status: CategoryStatus.updated));
  }

  void _selectTodoCategory(SelectTodoCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        status: CategoryStatus.selected,
        index: event.index,
        name: event.name,
        color: event.color));
  }

  void _updateCategory(UpdateCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      status: CategoryStatus.updated,
      name: event.name,
      color: event.color,
      publicStatus: event.publicStatus
    ));
  }

  void _selectVisibleRange(SelectVisibleRangeButton event, Emitter<CategoryState> emit) {
    emit(state.copyWith(publicStatus: event.publicStatus));
  }

  void _selectNewCategoryColor(SelectNewCategoryColor event, Emitter<CategoryState> emit) {
    emit(state.copyWith(color: event.color));
  }

  Future<void> _onFetchCategory(FetchCategory event, Emitter<CategoryState> emit) async {
    try {
      final categories = await CategoryRepository.getAllCategory();

      if(categories.isEmpty) {
        return emit(state.copyWith(status: CategoryStatus.initial));
      }

      emit(state.copyWith(status: CategoryStatus.loaded, categories: categories));

    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.failed));

    }
  }


}
