import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/components/widget/app_components.dart';

class TimerRecordListHeader extends StatelessWidget {
  const TimerRecordListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 소제목
        Row(children: [
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: subTitle(context, '시작시간'),
          )),
          Expanded(
              child: Align(
                alignment: Alignment.center,
                child: subTitle(context, '멈춘시간'),
          )),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: subTitle(context, '총시간'),
          )),
        ]),
        // 구분선 및 여백
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: AppComponents.greyDivider,
        ),
      ],
    );
  }
}

// 타이머 기록 구분할 소제목
Widget subTitle(BuildContext context, String title) {
  return Text(title,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: grey3));
}
