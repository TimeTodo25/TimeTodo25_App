import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_add.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_setting.dart';
import '../widget/category_list_tile.dart';

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
        backOnTap: () {
          // 뒤로 가기
          Navigator.pop(context);
        },
        actionText: '등록',
        actionOnTap: () {
          // 등록 화면으로 이동
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryScreenAdd()));
        },
      ),
      body: ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: CategoryListTile()
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 카테고리 설정 화면으로 이동
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryScreenSetting()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white,
        elevation: 1,
        mini: true,
        child: Icon(Icons.settings_outlined, color: grey3, size: 24),
      ),
    );
  }
}
