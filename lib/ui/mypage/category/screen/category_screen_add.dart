import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/entity/category/category_tbl.dart';
import 'package:time_todo/repository/category_repository.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/components/inputs/underline_input_textfield.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/mypage/category/widget/category_color_list.dart';
import 'package:time_todo/ui/mypage/category/widget/category_sub_title.dart';

import '../../../components/buttons/visible_range_button.dart';

class CategoryScreenAdd extends StatefulWidget {
  const CategoryScreenAdd({super.key});

  @override
  State<CategoryScreenAdd> createState() => _CategoryScreenAddState();
}

class _CategoryScreenAddState extends State<CategoryScreenAdd> {
  late double deviceHeight;
  late double deviceWidth;

  // 버튼의 이름을 리스트로 관리
  final List<String> buttonOption = ['나만보기', '일부공개', '전체공개'];

  // 선택한 버튼의 인덱스 저장
  int selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      // 빈화면 터치시 키보드 내리기
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: MainAppBar(
            title: '카테고리 등록',
            actionText: '완료',
            actionOnTap: () { },
            backOnTap: () => Navigator.pop(context)
        ),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // 앱바 아래 여백
              const SizedBox(height: 10),
              // 카테고리 작성 textField
              const UnderlineInputTextField(
                borderColor: fontBlack,
                hintText: CategoryConstants.hintText,
                focusColor: fontBlack,
              ),
              const SizedBox(height: 30),
              // 소제목 1
              const CategorySubTitle(text: CategoryConstants.subTitle1),
              const SizedBox(height: 15),
              // 공개 범위 선택 버튼
              Row(
                children: List.generate(
                  CategoryConstants.buttonOptions.length, (index) => Flexible(
                    child: VisibleRangeButton(
                      title: CategoryConstants.buttonOptions[index],
                      isSelected: selectedIndex == index,
                      onTap: () => setState(() => selectedIndex = index),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              AppComponents.greyDivider,
              const SizedBox(height: 20),
              // 소제목 2
              const CategorySubTitle(text: CategoryConstants.subTitle2),
              const SizedBox(height: 15),
              // 컬러 리스트 GridView
              CategoryColorList()
            ],
          ),
        ),
      ),
    );
  }
}
