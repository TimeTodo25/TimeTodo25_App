import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class JoinWidget extends StatefulWidget {

  final String title;
  final String? imageAssets;
  final int progressValue;
  const JoinWidget({
    required this.title,
    required this.progressValue,
    this.imageAssets,
    Key? key
  }): super(key: key);

  @override
  State<JoinWidget> createState() => _JoinWidgetState();
}

class _JoinWidgetState extends State<JoinWidget> {

  @override
  Widget build(BuildContext context) {

    // 이미지 경로가 null이면 기본 경로 사용
    String imagePath = widget.imageAssets ?? "lib/assets/images/join_image.png";

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
                child: Icon(CupertinoIcons.back,color: grey3,),
              )
          ),
        ),
        // 이미지
        Padding(padding: EdgeInsets.fromLTRB(0,30,0,30),child: Image.asset(imagePath),),
        LinearProgressIndicator(
          minHeight: 3,
          color: mainBlue,
          value: widget.progressValue / 4,
          backgroundColor: grey1,
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 22
            )
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 30)),
      ],
    );
  }
}
