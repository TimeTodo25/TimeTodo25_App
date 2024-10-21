import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class MainAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final IconData iconData;
  final List<Widget>? actions;
  final VoidCallback? onPress;

  const MainAppbar(
      {super.key,
      required this.title,
      required this.iconData,
      this.actions,
      this.onPress});

  @override
  State<MainAppbar> createState() => _MyPageAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyPageAppbarState extends State<MainAppbar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title,
          style:
              Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20)),
      leading: IconButton(
          onPressed: () {
            // 뒤로 가기
            // Navigator.of(context).pop();
            // 또는 onPress 매개변수로 받기
          },
          icon: Icon(widget.iconData, color: grey3, size: 24)),
      actions: widget.actions ?? [],
      backgroundColor: Colors.transparent,
    );
  }
}
