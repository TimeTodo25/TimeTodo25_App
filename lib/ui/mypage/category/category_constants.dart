import 'dart:ui';

import 'package:time_todo/assets/colors/color.dart';

class CategoryConstants {
  static const String hintText = '카테고리 작성';
  static const String subTitle1 = '공개범위';
  static const String subTitle2 = '컬러';
}

enum VisibilityOption {
  private('나만보기'),
  partial('일부공개'),
  public('전체공개');

  final String displayName;
  const VisibilityOption(this.displayName);

  // static 메서드로 모든 옵션 반환
  static List<VisibilityOption> get valuesList => VisibilityOption.values;
}

enum CategoryColor {
  color1(Color(0xFF7E7DE7)),
  color2(Color(0xFFFF7A5D)),
  color3(Color(0xFF7DE7B7)),
  color4(Color(0xFFFFB339)),
  color5(Color(0xFF5E5CE5)),
  color6(Color(0xFFFF9F93)),
  color7(Color(0xFF89D2FF)),
  color8(Color(0xFFFFF159)),
  color9(Color(0xFFE47AFF)),
  color10(Color(0xFFFF7A5D)),
  color11(Color(0xFFFFA4C1)),
  color12(Color(0xFF89F258));

  final Color color;

  const CategoryColor(this.color);
}