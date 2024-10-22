import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';
import 'package:time_todo/ui/components/widget/main_app_bar.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/components/inputs/underline_input_textfield.dart';
import 'package:time_todo/ui/mypage/widget/category_color_list.dart';
class CategoryScreenAdd extends StatefulWidget {
  const CategoryScreenAdd({super.key});

  @override
  State<CategoryScreenAdd> createState() => _CategoryScreenAddState();
}

class _CategoryScreenAddState extends State<CategoryScreenAdd> {
  String hintText = '카테고리 작성';
  String subTitle = '공개범위';
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
    return Scaffold(
      appBar: MainAppBar(
          title: '카테고리 등록',
          actionText: '완료',
          actionOnTap: () {},
          backOnTap: () {
            Navigator.pop(context);
          }),
      body: ResponsiveCenter(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // 카테고리 작성 textField
            UnderlineInputTextField(
              borderColor: fontBlack,
              hintText: hintText,
              focusColor: fontBlack,
            ),
            // 여백
            SizedBox(height: 30),
            // subTitle
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(subTitle,
                    style: Theme.of(context).textTheme.labelSmall)),
            // 여백
            SizedBox(height: 10),
            // 공개 범위 선택 버튼
            Row(
              children: [
                Flexible(
                    child: visibleRangeButton(
                        context, buttonOption[0], 0)),
                SizedBox(width: 10),
                Flexible(
                    child: visibleRangeButton(
                        context, buttonOption[1], 1)),
                SizedBox(width: 10),
                Flexible(
                    child: visibleRangeButton(
                        context, buttonOption[2], 2)),
              ],
            ),
            // 여백
            SizedBox(height: 30),
            // 구분선
            AppComponents.greyDivider,
            CategoryColorList()
          ],
        ),
      ),
    );
  }

  // onTap 이벤트를 처리하는 함수
  void onButtonTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // 나만보기, 일부공개, 전체공개 버튼
  Widget visibleRangeButton(BuildContext context, String title, int index){
    // 활성화 상태에 따라 컬러 변경
    Color color = (selectedIndex == index) ? fontBlack : grey3;

    return GestureDetector(
      onTap: () {
        // 탭하면 해당 index update
        onButtonTap(index);
      },
      child: Container(
        padding: EdgeInsets.all(4),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 24, color: color),
            SizedBox(width: 4),
            Text(title,
                style:
                Theme.of(context).textTheme.labelMedium?.copyWith(color: color))
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 1),
              ),
            ]),
      ),
    );
  }
}
