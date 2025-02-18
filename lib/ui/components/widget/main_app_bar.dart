import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback backOnTap; // 뒤로가기 onTap
  final String? actionText; // 앱바 오른쪽에 적을 텍스트
  final VoidCallback? actionOnTap; // 앱바 오른쪽 onTap

  const MainAppBar({
    Key? key,
    required this.title,
    required this.backOnTap,
    this.actionText,
    this.actionOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AppBar(
          scrolledUnderElevation: 0, // 스크롤 시 앱바 배경색 바뀌는 현상을 막기 위함
          backgroundColor: Colors.white,
          toolbarHeight: 70, // AppBar의 높이 설정
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 20,
            ),
            textAlign: TextAlign.center, // 가운데 정렬
          ),
          centerTitle: true,
          leading: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: backOnTap,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(CupertinoIcons.back, color: grey3),
            ),
          ),// 뒤로가기
          actions: [
            if (actionText != null && actionOnTap != null)
              InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: actionOnTap,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20,10,0,10),
                    child: Text(
                      actionText!,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: mainRed
                      ),
                    ),
                  )
              ),
          ],
        )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70); // 앱바 높이
}
