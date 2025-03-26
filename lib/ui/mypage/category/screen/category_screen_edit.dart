import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category_detail/category_detail_bloc.dart';
import 'package:time_todo/bloc/category_detail/category_detail_event.dart';
import 'package:time_todo/bloc/category_detail/category_detail_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/main_alert.dart';
import 'package:time_todo/ui/components/widget/toast_message.dart';
import 'package:time_todo/ui/mypage/category/category_constants.dart';
import 'package:time_todo/ui/mypage/category/widget/category_sub_title.dart';
import 'package:time_todo/ui/components/buttons/delete_or_end_button.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/components/inputs/underline_input_textfield.dart';
import 'package:time_todo/ui/mypage/category/widget/category_color_list.dart';
import '../../../components/buttons/visible_range_button.dart';

@RoutePage(name: 'CategoryEditRoute')
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
    context.read<CategoryDetailBloc>().add(SelectEditingCategory(index: widget.editCategoryIndex));
  }

  // 공개 범위, 색상 상태 초기화
  void _initStateWithCategoryData(CategoryDetailState state) {
    context.read<CategoryDetailBloc>().add(SelectVisibleRangeButton(publicStatus: state.publicStatus));
    context.read<CategoryDetailBloc>().add(SelectNewCategoryColor(color: state.color));
  }

  void _initTitle(String title) {
    _controller.text = title;
  }

  void _onSelectVisibleRangeButton(VisibilityOption option) {
    context.read<CategoryDetailBloc>().add(SelectVisibleRangeButton(publicStatus: option));
  }

  void _onEditCategory() {
    context.read<CategoryDetailBloc>().add(EditCategory(
        index: widget.editCategoryIndex,
        title: _controller.text)
    );
    Navigator.pop(context);
  }

  // 카테고리 삭제 : 해당 카테고리 하위에 있는 투두, 루틴 모두 삭제
  void _onHardDeleteCategory() {
    context.read<CategoryDetailBloc>().add(HardDeleteCategory(index: widget.editCategoryIndex));
    ToastUtils.showToastMessage('해당 카테고리 및 데이터가 삭제되었습니다.');
    _popScreen();
  }

  // 카테고리 종료 : 해당 카테고리 하위에 있는 투두, 루틴 정보 보관
  void _onSoftDeleteCategory() {
    context.read<CategoryDetailBloc>().add(SoftDeleteCategory(index: widget.editCategoryIndex));
    ToastUtils.showToastMessage('해당 카테고리가 사용 중단되었습니다.');
    _popScreen();
  }

  void _popScreen() {
    context.router.popUntil((route) => route.settings.name == CategoryManageRoute.name);
  }

  // 삭제 경고
  void _showHardDeleteAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return
            // 삭제 상태로 변경
            MainAlert(
              msg: '해당 카테고리 하위에 있는 투두, 루틴이 \n',
              highlightedTexts: [
                TextSpan(
                  text: '모두 삭제',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mainRed)
                ),
                TextSpan(
                  text: '됩니다.',
                  style: Theme.of(context).textTheme.bodyMedium
                )
              ],
              onPositivePressed: () {
                _onHardDeleteCategory();
              },
              onNegativePressed: () {
                Navigator.pop(context);
              },
            );
        });
  }

  // 종료 경고
  void _showSoftDeleteAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return
            MainAlert(
              msg: '해당 카테고리를 더 이상 사용하지 않습니다.\n',
              highlightedTexts: [
                TextSpan(
                  text: '기존 데이터',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mainRed)
                ),
                TextSpan(
                    text: '는',
                    style: Theme.of(context).textTheme.bodyMedium
                ),
                TextSpan(
                    text: ' 유지',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mainRed)
                ),
                TextSpan(
                    text: '됩니다.',
                    style: Theme.of(context).textTheme.bodyMedium
                ),
              ],
              onPositivePressed: () {
                _onSoftDeleteCategory();
              },
              onNegativePressed: () {
                Navigator.pop(context);
              },
            );
        });
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
            backOnTap: () => Navigator.pop(context)
        ),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocListener<CategoryDetailBloc, CategoryDetailState>(
            listener: (context, categoryState) {
              // 카테고리 데이터 초기값 불러오기
              _initStateWithCategoryData(categoryState);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 카테고리 작성 textField
                BlocSelector<CategoryDetailBloc, CategoryDetailState, String>(
                  selector: (state) => state.title,
                  builder: (context, title) {
                    _initTitle(title);
                    return UnderlineInputTextField(
                      borderColor: fontBlack,
                      hintText: CategoryConstants.hintText,
                      focusColor: fontBlack,
                      controller: _controller,
                    );
                  },
                ),
                // 여백
                const SizedBox(height: 30),
                // 소제목 1
                const CategorySubTitle(text: CategoryConstants.subTitle1),
                // 여백
                const SizedBox(height: 15),
                // 공개 범위 선택 버튼
                BlocSelector<CategoryDetailBloc, CategoryDetailState, VisibilityOption>(
                  selector: (state) => state.publicStatus,
                  builder: (context, publicStatus) {
                    return Row(
                      children: VisibilityOption.values.map((option) {
                        return Flexible(
                          child: VisibleRangeButton(
                              title: option.displayName,
                              isSelected: publicStatus == option,
                              onTap: () => _onSelectVisibleRangeButton(option)),
                        );
                      }).toList(),
                    );
                  },
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
                const Expanded(child: CategoryColorList()),
                // 삭제, 닫기 버튼
                Align(
                    alignment: Alignment.bottomCenter,
                    child: DeleteOrEndButton(
                        buttonHeight: 55,
                        onLeftButtonTap: () => _showHardDeleteAlert(context),
                        onRightButtonTap: () => _showSoftDeleteAlert(context)
                    )),
                const SizedBox(height: 15),
                // 삭제, 종료 설명
                hardDeleteExplainText(context),
                softDeleteExplainText(context),
                // 화면 맨 아래 여백
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget hardDeleteExplainText(context) {
  return Text('삭제: 관련 데이터가 영구적으로 삭제됩니다.', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red));
}

Widget softDeleteExplainText(context) {
  return Text('종료: 관련 데이터는 유지되지만, 항목 추가는 제한됩니다.', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red));
}