import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/buttons/main_switch.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';

class CategoryScreenSetting extends StatefulWidget {
  const CategoryScreenSetting({super.key});

  @override
  State<CategoryScreenSetting> createState() => _CategoryScreenSettingState();
}

class _CategoryScreenSettingState extends State<CategoryScreenSetting> {
  @override
  Widget build(BuildContext context) {
    String title1 = '등록한 순으로 정렬';
    String title2 = '완료한 TODO 뒤로 정렬';

    return Scaffold(
        appBar: MainAppBar(
          title: '카테고리 설정',
          backOnTap: () {
            Navigator.pop(context);
          },
        ),
        body: ResponsiveCenter(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                MainSwitch(
                    title: title1,
                    onChanged: (value) {

                    }),
                MainSwitch(
                    title: title2,
                    onChanged: (value) {

                }),
              ],
            )));
  }
}
