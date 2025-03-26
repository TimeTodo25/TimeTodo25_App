import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/category/widget/category_list_tile_edit.dart';

@RoutePage(name: 'CategoryManageRoute')
class MyPageCategoryManage extends StatefulWidget {
  const MyPageCategoryManage({super.key});

  @override
  State<MyPageCategoryManage> createState() => _MyPageCategoryManageState();
}

class _MyPageCategoryManageState extends State<MyPageCategoryManage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: MainAppBar(
        title: '카테고리 관리',
        backOnTap: () {
          // 뒤로 가기
          Navigator.pop(context);
        },
        actionText: '신규',
        actionOnTap: () {
          /// 카테고리 등록 화면으로 이동
          context.router.push(const CategoryAddRoute());
        }
      ),
      body: const ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: CategoryListTileEdit()
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// 카테고리 설정 화면으로 이동
          context.router.push(const CategorySettingRoute());
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white,
        elevation: 1,
        mini: true,
        child: const Icon(Icons.settings_outlined, color: grey3, size: 24),
      ),
    );
  }
}
