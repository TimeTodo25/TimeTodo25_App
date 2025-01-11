import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'category_event.dart';
import 'category_state.dart';


class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState(status: CategoryStatus.initial)) {
    on<InitCategory>(_initCategory);
    on<SelectTodoCategory>(_selectTodoCategory);
    on<UpdateCategory>(_updateCategory);
    on<SelectVisibleRangeButton>(_selectVisibleRange);

  }

  void _initCategory(InitCategory event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      status: CategoryStatus.initial,
      index: 0,
      name: '운동',
      color: mainBlue
    ));
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
}
