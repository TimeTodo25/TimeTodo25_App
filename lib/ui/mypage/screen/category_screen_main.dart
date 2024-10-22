import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/widget/category_list_tile.dart';

class CategoryScreenMain extends StatefulWidget {
  const CategoryScreenMain({super.key});

  @override
  State<CategoryScreenMain> createState() => _CategoryScreenMainState();
}

class _CategoryScreenMainState extends State<CategoryScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: MainAppBar(
        title: '카테고리',
        backOnTap: () {},
        actionText: '등록',
      ),
      body: ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CategoryListTile(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings_outlined, color: grey3, size: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white,
        elevation: 1,
        mini: true,
      ),
    );
  }
}
