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
import 'package:time_todo/ui/utils/color_utils.dart';
import '../../../../bloc/category/category_bloc.dart';
import '../../../../bloc/category/category_event.dart';
import '../../../../bloc/category/category_state.dart';
import '../../../components/buttons/visible_range_button.dart';

class CategoryScreenEdit extends StatefulWidget {
  final int editCategoryIndex;
  const CategoryScreenEdit({super.key, required this.editCategoryIndex});

  @override
  State<CategoryScreenEdit> createState() => _CategoryScreenEditState();
}

class _CategoryScreenEditState extends State<CategoryScreenEdit> {
  final TextEditingController _controller = TextEditingController();
  late double deviceHeight;
  late double deviceWidth;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _getCategoryByIndex();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }

  // 해당 카테고리 정보 로딩
  void _getCategoryByIndex() {
    context.read<CategoryBloc>().add(SelectEditingCategory(index: widget.editCategoryIndex));
  }

  // 제목, 공개 범위, 색상 상태 초기화
  void _initStateWithCategoryData(CategoryState state) {
    // 이미 초기화된 경우에는 실행하지 않음
    if (_isInitialized) return;

    _initTitle(state.title);
    _initVisibleRangeButton(state.publicStatus);
    _initColorButton(ColorUtil.colorToString(state.color));
    _isInitialized = true;
  }

  void _initTitle(String title) {
    _controller.text = title;
  }

  void _initVisibleRangeButton(VisibilityOption publicStatus) {
    _onSelectVisibleRangeButton(publicStatus);
  }

  void _initColorButton(String categoryColor) {
    final color = ColorUtil.getColorFromName(categoryColor);
    context.read<CategoryBloc>().add(SelectNewCategoryColor(color: color));
  }

  void _onSelectVisibleRangeButton(VisibilityOption option) {
    context.read<CategoryBloc>().add(SelectVisibleRangeButton(publicStatus: option));
  }

  void _onEditCategory() {
    context.read<CategoryBloc>().add(EditCategory(
        index: widget.editCategoryIndex,
        title: _controller.text)
    );
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: MainAppBar(
            title: '카테고리 수정',
            actionText: '완료',
            actionOnTap: () {
              // 카테고리 수정
              _onEditCategory();
            },
            backOnTap: () => Navigator.pop(context)),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocListener<CategoryBloc, CategoryState>(
            listener: (context, categoryState) {
              // 카테고리 데이터 초기값 불러오기
                _initStateWithCategoryData(categoryState);
            },
            child: BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, categoryState) {
                return Column(
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
                          child: VisibleRangeButton(
                              title: option.displayName,
                              isSelected: categoryState.publicStatus == option,
                              onTap: () => _onSelectVisibleRangeButton(option)
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
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}