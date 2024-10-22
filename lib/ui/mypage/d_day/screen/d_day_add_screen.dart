import 'package:flutter/material.dart';

import '../../../components/widget/main_app_bar.dart';

class DDayAddScreen extends StatefulWidget {
  const DDayAddScreen({super.key});

  @override
  State<DDayAddScreen> createState() => _DDayAddScreenState();
}

class _DDayAddScreenState extends State<DDayAddScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: MainAppBar(
            title: "D-day 등록",
            backOnTap: () {
              Navigator.pop(context);
            },
            actionText: "완료",
            actionOnTap: () {
              Navigator.pop(context);
              // TODO DB에 D-Day목록 등록하는 로직 작성해야됨
            },
          ),
        )
    );
  }
}
