import 'dart:ui';
import 'package:time_todo/assets/colors/color.dart';


class ColorUtil {

  static const Map<String, Color> _colorMap = {
    'mainBlue': mainBlue,
    'mainRed': mainRed,
    'mainYellow': mainYellow,
    'mainGreen': mainGreen,
  };

  static Color getColorFromName(String colorName) {
    return _colorMap[colorName] ?? mainBlue;
  }

  static Map<String, Color> getColorMap() {
    return _colorMap;
  }

}