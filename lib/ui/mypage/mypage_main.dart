import 'package:flutter/material.dart';

class MyPageMain extends StatefulWidget {
  const MyPageMain({super.key});

  @override
  State<MyPageMain> createState() => _MyPageMainState();
}

class _MyPageMainState extends State<MyPageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('myPage_screen'),),
    );
  }
}