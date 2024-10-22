import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/components/inputs/underline_input_textfield.dart';

class CategoryScreenAdd extends StatefulWidget {
  const CategoryScreenAdd({super.key});

  @override
  State<CategoryScreenAdd> createState() => _CategoryScreenAddState();
}

class _CategoryScreenAddState extends State<CategoryScreenAdd> {
  String hintText = '카테고리 작성';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
          title: '카테고리 등록',
          actionText: '완료',
          actionOnTap: () {

          },
          backOnTap: () {
            Navigator.pop(context);
          }),
      body: ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            UnderlineInputTextField(
                borderColor: fontBlack,
                hintText: hintText,
              focusColor: fontBlack,
            )
        ],
        ),
      ),
    );
  }
}

