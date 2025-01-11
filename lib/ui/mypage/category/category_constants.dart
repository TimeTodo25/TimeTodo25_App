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