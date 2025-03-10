import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_todo/routes/app_routes.dart';

class MainBottomAppBar extends StatefulWidget {
  const MainBottomAppBar({super.key, this.onTapRightIcon, this.onTapLeftIcon});
  final VoidCallback? onTapRightIcon;
  final VoidCallback? onTapLeftIcon;

  @override
  State<MainBottomAppBar> createState() => _MainBottomAppBarState();
}

class _MainBottomAppBarState extends State<MainBottomAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent.withOpacity(0.15),
      child: BottomAppBar(
          height: 55,
          notchMargin: 15,
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      /// 로그인 화면으로 이동
                      context.router.push(const LoginMainRoute());
                    },
                    icon: const Icon(CupertinoIcons.person_2_fill)),
              ),
              // 여백
              SizedBox(width: 70),
              Expanded(
                // 두번째 아이콘 (친구 목록)
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    // 화면 변경
                    onPressed: () {
                      /// 마이페이지 화면으로 이동
                      context.router.push(const MyPageMainRoute());
                    },
                    icon: const Icon(CupertinoIcons.settings)),
              ),
            ],
          ),
        ),
    );
  }
}
