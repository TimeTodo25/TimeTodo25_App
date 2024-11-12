import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class HomeComment extends StatefulWidget {
  const HomeComment({super.key});

  @override
  State<HomeComment> createState() => _HomeCommentState();
}

class _HomeCommentState extends State<HomeComment> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 여백
        SizedBox(width: 4),
        Flexible(
            child: Container(
              margin: EdgeInsets.all(4),
              color: Colors.grey,
              width: 35,
              height: 35,
            )),
        // 여백
        SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('엄마', style: Theme.of(context).textTheme.labelSmall),
                SizedBox(width: 4),
                Text('2024.10.11', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: grey3),),
              ],
            ),
            Text('datadatadatadatadatadatadatadata')
          ],
        )
      ],
    );
  }
}
