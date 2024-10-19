import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class JoinWidget extends StatelessWidget {
  const JoinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 뒤로가기
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              padding: EdgeInsets.zero,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(CupertinoIcons.back),
              )
          ),
        ),
        // 이미지
        Image.asset("lib/assets/images/join_image.png"),
        Padding(padding: EdgeInsets.only(bottom: 30)),
        LinearProgressIndicator(
          minHeight: 3,
          color: mainBlue,
          value: 50/100,
          backgroundColor: Colors.grey,
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("타임 투두 서비스 이용약관에\n동의해주세요",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'pretendardSemiBold'
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 30)),
      ],
    );
  }
}
