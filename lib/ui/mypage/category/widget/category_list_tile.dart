import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/mypage/category/widget/category_tile.dart';
import '../../../../bloc/category/category_bloc.dart';
import '../../../../bloc/category/category_event.dart';
import '../../../../bloc/category/category_state.dart';

class CategoryListTile extends StatefulWidget {
  const CategoryListTile({super.key});

  @override
  State<CategoryListTile> createState() => _MyPageCategoryButtonState();
}

class _MyPageCategoryButtonState extends State<CategoryListTile> {
  // 임시 데이터
  List<Map<String, Color>> testList = [
    {'운동' : mainBlue},
    {'할일' : mainGreen},
    {'청소' : mainRed},
    {'공부' : mainYellow},
    {'운동' : mainBlue},
    {'할일' : mainGreen},
    {'청소' : mainRed},
    {'공부' : mainYellow},
  ];

  double height = 500;

  @override
  void didChangeDependencies() {
    height = MediaQuery.of(context).size.height * 0.7;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return ListView.builder(
          clipBehavior: Clip.none,
          itemCount: testList.length,
          itemBuilder: (context, index) {
            String title = testList[index].keys.first;
            Color color = testList[index].values.first;

            return Column(children: [
              // 타일 사이 간격
              const SizedBox(
                height: 15,
              ),
              // 카테고리 타일 1개
              CategoryTile(
                title: title,
                themeColor: color,
                backgroundColor: Colors.white,
                onTap: () {
                  context.read<CategoryBloc>().add(
                      SelectCategory(
                          index: index,
                          name: title,
                          color: color,
                      )
                  );
                },
                // 그림자
                boxShadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(0, 1),
                ),
                trailingIcon: Icon(
                  Icons.check,
                  color: index == state.index ? color : Colors.transparent,
                ),
              ),
            ]);
          });
    });
  }
}
