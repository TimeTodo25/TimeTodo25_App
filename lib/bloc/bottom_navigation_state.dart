
// 1. Bloc State
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNaviState<int> {
  final int tabIndex;

  BottomNaviState(this.tabIndex);
}


// 2. Bloc Cubit
class BottomNaviCubit extends Cubit<BottomNaviState> {
  BottomNaviCubit() : super(BottomNaviState(0));

  // 탭 index 변경
  void changeTab(int newIndex) {
    emit(BottomNaviState(newIndex)); // 상태 변경
  }
}