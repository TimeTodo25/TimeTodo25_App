import 'dart:ui';
import 'package:time_todo/assets/colors/color.dart';

class ColorUtil {

  static String colorToString(Color color) {
    return color.value.toRadixString(16);
  }

  static Color getColorFromName(String colorName) {
    try {
      return Color(int.parse(colorName, radix: 16));
    } catch (e) {
      print('Error parsing color: $colorName');
      return mainBlue;  // Default Color
    }
  }
}