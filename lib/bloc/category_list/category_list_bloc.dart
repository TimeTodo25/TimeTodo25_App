import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'category_list_event.dart';
import 'category_list_state.dart';

// 여러 카테고리 상태관리
class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc() : super(const CategoryListState(status: CategoryListStatus.initial, categories: [])) {
    on<InitCategoryList>(_initCategoryList);
    on<FetchCategoryList>(_onFetchCategory);
  }

  void _initCategoryList(InitCategoryList event, Emitter<CategoryListState> emit) {
    emit(state.copyWith(
      status: CategoryListStatus.initial,
      index: 0,
      title: '',
      color: mainBlue,
      publicStatus: VisibilityOption.public
    ));
  }

  Future<void> _onFetchCategory(FetchCategoryList event, Emitter<CategoryListState> emit) async {
    try {
      final categories = await CategoryRepository.getValidCategories();

      if(categories.isEmpty) {
        return emit(state.copyWith(status: CategoryListStatus.initial));
      }
      emit(state.copyWith(status: CategoryListStatus.loaded, categories: categories));

    } catch (e) {
      emit(state.copyWith(status: CategoryListStatus.failed));
    }
  }
}
