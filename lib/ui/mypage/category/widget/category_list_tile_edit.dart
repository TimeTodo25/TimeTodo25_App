import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/ui/mypage/category/screen/category_screen_edit.dart';
import 'package:time_todo/ui/mypage/category/widget/category_tile.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import '../../../../bloc/category/category_bloc.dart';
import '../../../../bloc/category/category_event.dart';
import '../../../../bloc/category/category_state.dart';

class CategoryListTileEdit extends StatefulWidget {
  const CategoryListTileEdit({super.key});

  @override
  State<CategoryListTileEdit> createState() => _MyPageCategoryButtonState();
}

class _MyPageCategoryButtonState extends State<CategoryListTileEdit> {
  double height = 500;

  void getAllCategory() {
    context.read<CategoryBloc>().add(FetchCategory());
  }

  @override
  void didChangeDependencies() {
    height = MediaQuery.of(context).size.height * 0.7;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return ListView.builder(
          clipBehavior: Clip.none,
          itemCount: state.categories.length,
          itemBuilder: (context, index) {
            String itemTitle = state.categories[index].title;
            Color itemColor = ColorUtil.getColorFromName(state.categories[index].categoryColor);
            int currentCategoryIdx = state.categories[index].idx!;

            return Column(children: [
              // 타일 사이 간격
              const SizedBox(
                height: 15,
              ),
              // 카테고리 타일 1개
              CategoryTile(
                title: itemTitle,
                themeColor: itemColor,
                backgroundColor: Colors.white,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CategoryScreenEdit(
                      editCategoryIndex: currentCategoryIdx
                    )
                  ));
                },
                // 그림자
                boxShadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(0, 1),
                ),
              ),
            ]);
          });
    });
  }
}
