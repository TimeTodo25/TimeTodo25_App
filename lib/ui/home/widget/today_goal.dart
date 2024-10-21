import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayGoalSection extends StatelessWidget {
  final String formattedDate;
  final double sumTime;
  final String todayGoal;
  final Color textGray;
  const TodayGoalSection({
    Key? key,
    required this.formattedDate,
    required this.sumTime,
    required this.todayGoal,
    required this.textGray,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          // 아이콘
          Container(width: 70, height: 70, color: Colors.black),
          // 여백
          SizedBox(width: 10),
          // 오늘 날짜, 목표, 총 소모한 시간
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 오늘 날짜
                    Text(
                      formattedDate,
                      style: TextStyle(
                        fontFamily: 'pretendardBold',
                        fontSize: 20,
                        color: textGray,
                      ),
                    ),
                    // 총 공부시간
                    Row(
                      children: [
                        Icon(CupertinoIcons.alarm_fill, color: Colors.grey, size: 16),
                        SizedBox(width: 4),
                        Text('$sumTime h', style: TextStyle(color: textGray)),
                      ],
                    ),
                  ],
                ),
                // 오늘의 목표 텍스트
                Text(todayGoal, style: TextStyle(color: textGray, fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}