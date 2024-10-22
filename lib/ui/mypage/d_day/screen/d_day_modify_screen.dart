import 'package:flutter/material.dart';

import '../../../components/widget/main_app_bar.dart';

class DDayModifyScreen extends StatefulWidget {
  const DDayModifyScreen({super.key});

  @override
  State<DDayModifyScreen> createState() => _DDayModifyScreenState();
}

class _DDayModifyScreenState extends State<DDayModifyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: MainAppBar(
            title: "D-day 수정",
            backOnTap: () {
              Navigator.pop(context);
            },
            actionText: "완료",
            actionOnTap: () {
              Navigator.pop(context);
              // TODO DB에 D-Day목록 수정하는 로직 작성해야됨
            },
          ),
        )
    );
  }
}
