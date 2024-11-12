import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/colors/color.dart';

class TodoAchievementTime extends StatefulWidget {
  const TodoAchievementTime({super.key});

  @override
  State<TodoAchievementTime> createState() => _TodoAchievementTimeState();
}

class _TodoAchievementTimeState extends State<TodoAchievementTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "달성시간",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                // Todo 현재까지 todo를 진행한 시간을 보여주기
                "00:00",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: grey3
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
