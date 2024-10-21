import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/button/main_switch_button.dart';
import 'package:time_todo/ui/components/widget/main_appbar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';

class CategoryScreenSetting extends StatefulWidget {
  const CategoryScreenSetting({super.key});

  @override
  State<CategoryScreenSetting> createState() => _CategoryScreenSettingState();
}

class _CategoryScreenSettingState extends State<CategoryScreenSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppbar(
          title: '카테고리 설정',
          iconData: CupertinoIcons.back,
        ),
        body: ResponsiveCenter(
          padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: MainSwitchButton(),
            )));
  }
}
