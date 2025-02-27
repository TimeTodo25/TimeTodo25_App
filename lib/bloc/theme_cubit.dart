import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../assets/colors/color.dart';

class ThemeCubit extends Cubit<Color> {
  ThemeCubit() : super(mainBlue);
  void changeTheme(Color newColor) => emit(newColor);
}