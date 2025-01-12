import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/category/category_event.dart';
import 'package:time_todo/bloc/category/category_state.dart';
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
  final TextEditingController _controller = TextEditingController();
  late double deviceHeight;
  late double deviceWidth;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }

  void addCategory() {
    context.read<CategoryBloc>().add(AddNewCategory(title: _controller.text));
  }
  
  void _onSelectVisibleRangeButton(VisibilityOption option) {
    context.read<CategoryBloc>().add(
        SelectVisibleRangeButton(publicStatus: option)
    );
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
            actionOnTap: () {
              addCategory();
              Navigator.pop(context);
            },
            backOnTap: () => Navigator.pop(context)
        ),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // 앱바 아래 여백
              const SizedBox(height: 10),
              // 카테고리 작성 textField
              UnderlineInputTextField(
                borderColor: fontBlack,
                hintText: CategoryConstants.hintText,
                focusColor: fontBlack,
                controller: _controller,
              ),
              const SizedBox(height: 30),
              // 소제목 1
              const CategorySubTitle(text: CategoryConstants.subTitle1),
              const SizedBox(height: 15),
              // 공개 범위 선택 버튼
              Row(
                children: VisibilityOption.values.map((option) {
                  return Flexible(
                    child: BlocBuilder<CategoryBloc, CategoryState>(
                        builder: (context, state) {
                          return VisibleRangeButton(
                            title: option.displayName,
                            isSelected: state.publicStatus == option,
                            onTap: () => _onSelectVisibleRangeButton(option)
                          );
                        }
                    ),
                  );
                }).toList(),
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
