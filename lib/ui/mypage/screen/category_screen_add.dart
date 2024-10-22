import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';

class CategoryScreenAdd extends StatefulWidget {
  const CategoryScreenAdd({super.key});

  @override
  State<CategoryScreenAdd> createState() => _CategoryScreenAddState();
}

class _CategoryScreenAddState extends State<CategoryScreenAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
          title: '카테고리 등록',
          backOnTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
