import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_main_screen.dart';
import 'package:time_todo/ui/mypage/routine/screen/routine_main_screen.dart';
import 'package:time_todo/ui/mypage/screen/mypage_category_manage.dart';
import '../../../assets/colors/color.dart';

class MyPageMain extends StatefulWidget {
  const MyPageMain({super.key});

  @override
  State<MyPageMain> createState() => _MyPageMainState();
}

class _MyPageMainState extends State<MyPageMain> {

  // 화면 크기
  late double deviceWidth;
  late double deviceHeight;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  // 아이콘과 텍스트, 클릭이벤트가 포함된 Row 생성 함수
  Widget buildRowWithIcon(Widget Function()? screen, BuildContext context, String text, {bool isBodyMedium = true}) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (screen != null) { // screen이 null이 아닐 경우에만 Navigator.push 호출
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => screen()));
        }
      },
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Icon(CupertinoIcons.circle),
              SizedBox(width: 8),
              Text(
                text,
                style: isBodyMedium
                    ? Theme.of(context).textTheme.bodyMedium
                    : Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }


// Divider와 간격 추가 함수
  Widget buildDivider() {
    return Column(
      children: [
        SizedBox(height: 10),
        Divider(height: 1, color: grey1),
        SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    double bottomGradient = 56;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              // 하단 그라데이션
              Positioned(
                bottom: 0,
                child: Container(
                  height: bottomGradient,
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, gradientGrey],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              ResponsiveCenter(
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {

                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            border: Border.all(color: grey2, width: 0.5)
                                        ),
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Icon(CupertinoIcons.person_fill, color: mainBlue.withOpacity(0.5),size: 50)
                                        )
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "김진경",
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                fontSize: 20
                                            )
                                        ),
                                        Text(
                                          "timetodo2024@naver.com",
                                          style: Theme.of(context).textTheme.bodySmall,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Icon(CupertinoIcons.right_chevron,color: grey3)
                              ],
                            ),
                          )
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: mainBlue.withOpacity(0.2),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.circle),
                                    SizedBox(height: 10,),
                                    Text(
                                      "테마",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontSize: 12
                                      ),
                                    )
                                  ],
                                )
                            ),),
                            SizedBox(width: 10,),
                            Expanded(child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: mainBlue.withOpacity(0.2),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.circle),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Premium",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontSize: 12
                                      ),
                                    )
                                  ],
                                )
                            ),),
                            SizedBox(width: 10,),
                            Expanded(child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: mainBlue.withOpacity(0.2),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.circle),
                                    SizedBox(height: 10,),
                                    Text(
                                      "나의 통계",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontSize: 12
                                      ),
                                    )
                                  ],
                                )
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDivider(),
                            buildRowWithIcon(() => MyPageCategoryManage(), context, "카테고리 관리"),
                            buildRowWithIcon(() => RoutineMainScreen(), context, "루틴 관리"),
                            buildRowWithIcon(() => DDayMainScreen(),context, "D-day 관리"),
                            buildDivider(),
                            buildRowWithIcon(null,context, "친구 관리"),
                            buildDivider(),
                            buildRowWithIcon(null,context, "알림"),
                            buildRowWithIcon(null,context, "공지사항"),
                            buildRowWithIcon(null,context, "정보"),
                            buildDivider(),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("버전", style: Theme.of(context).textTheme.bodySmall),
                                Text("1.1.1", style: Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                            SizedBox(height: 20),
                            InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {

                                },
                                child: Row(
                                  children: [
                                    Text("로그아웃", style: Theme.of(context).textTheme.bodySmall),
                                  ],
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        )
    );

  }
}