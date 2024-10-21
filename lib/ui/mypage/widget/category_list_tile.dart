import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class CategoryListTile extends StatefulWidget {
  const CategoryListTile({super.key});

  @override
  State<CategoryListTile> createState() => _MyPageCategoryButtonState();
}

class _MyPageCategoryButtonState extends State<CategoryListTile> {
  List<String> categoryList = ['운동', '할일', '청소', '공부'];
  Color themeColor = mainBlue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: makeListTile(categoryList, themeColor),
        ),
      ],
    );
  }
}

Widget makeListTile(List list, Color themeColor) {
  return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        // 제목
        String title = list[index];
        return Column(
          children: [
            // 타일 사이 간격
            SizedBox(height: 15,),
            InkWell(
              child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: themeColor.withOpacity(0.2),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 1),
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 타이틀 글자수 20자 제한을 위한 분기
                      title.length > 20
                          ? Text(
                              title.substring(0, 20),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: themeColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          : Text(title,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: themeColor)),
                      // 왼쪽 아이콘 들어갈 부분
                      Container(
                        width: 25,
                        height: 25,
                        color: Colors.blue,
                      )
                    ],
                  )),
              onTap: () {
                //
              },
            ),

          ],
        );
      });
}
