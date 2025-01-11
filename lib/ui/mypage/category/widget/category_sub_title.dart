import 'package:flutter/material.dart';
// 소제목을 나타내는 위젯
class CategorySubTitle extends StatelessWidget {
  final String text;
  const CategorySubTitle({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(text, style: Theme.of(context).textTheme.labelSmall));
  }
}
