import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/mypage/category/widget/category_sub_title.dart';
import 'package:time_todo/ui/mypage/category/widget/category_delete_or_end_button.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/components/inputs/underline_input_textfield.dart';
import 'package:time_todo/ui/mypage/category/widget/category_color_list.dart';
import '../../../../bloc/category/category_bloc.dart';
import '../../../../bloc/category/category_event.dart';
import '../../../../bloc/category/category_state.dart';
import '../../../components/buttons/visible_range_button.dart';

class CategoryScreenEdit extends StatefulWidget {
  const CategoryScreenEdit({super.key});

  @override
  State<CategoryScreenEdit> createState() => _CategoryScreenEditState();
}

class _CategoryScreenEditState extends State<CategoryScreenEdit> {
  final TextEditingController _controller = TextEditingController();
  late double deviceHeight;
  late double deviceWidth;

  // 선택한 버튼의 인덱스 저장
  int selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }

  void _onSelectVisibleRangeButton(VisibilityOption option) {
    context.read<CategoryBloc>().add(
        SelectVisibleRangeButton(publicStatus: option)
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: MainAppBar(
            title: '카테고리 수정',
            actionText: '완료',
            actionOnTap: () {},
            backOnTap: () => Navigator.pop(context)),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // 카테고리 작성 textField
              UnderlineInputTextField(
                borderColor: fontBlack,
                hintText: CategoryConstants.hintText,
                focusColor: fontBlack,
                controller: _controller,
              ),
              // 여백
              const SizedBox(height: 30),
              // 소제목 1
              const CategorySubTitle(text: CategoryConstants.subTitle1),
              // 여백
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
              // 구분선
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: AppComponents.greyDivider),
              // 소제목 2
              const CategorySubTitle(text: CategoryConstants.subTitle2),
              // 여백
              const SizedBox(height: 15),
              // 컬러 리스트 GridView
              Expanded(child: CategoryColorList()),
              // 수정 삭제 버튼
              Align(
                  alignment: Alignment.bottomCenter,
                  child: CategoryDeleteOrEndButton(buttonHeight: 55)),
              // 화면 맨 아래 여백
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
