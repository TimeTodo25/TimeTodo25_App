import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/category/category_event.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/linear_timer.dart';
import 'package:time_todo/ui/todo/widget/time_record_list.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_button.dart';
import 'package:time_todo/ui/todo/widget/timer_record_list_header.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class LinearTimerScreen extends StatefulWidget {
  final Todo todoData;

  const LinearTimerScreen({
    super.key,
    required this.todoData
  });

  @override
  State<LinearTimerScreen> createState() => _LinearTimerScreenState();
}

class _LinearTimerScreenState extends State<LinearTimerScreen> {
  Color themeColor = mainBlue;
  double percent = 0.7;

  // 임시 데이터...
  List<List<String>> timeRecord = [
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
    ['09:30', 'pm', '07:30', 'pm', '5h'],
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            appBar: TimerAppBar(
                title: widget.todoData.content,
                backOnTap: () => Navigator.pop(context),
                titleColor: mainBlue
            ),
            body: ResponsiveCenter(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // 앱바 아래 여백
                    const SizedBox(height: 10),
                    // 흐르는 시간 표시
                    Flexible(
                      flex: 4,
                      child: Center(
                          child: Text(
                            '00 : 00 : 00',
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 30))
                      ),
                    ),
                    // 여백
                    const SizedBox(height: 10),
                    // 막대 타이머
                    Flexible(
                      flex: 2,
                      child: LinearTimer(
                          color: themeColor,
                          percent: percent,
                          startTime: widget.todoData.startTargetDt,
                          endTime: widget.todoData.endTargetDt
                      ),
                    ),
                    // 타이머 정지 기록 텍스트가 보이는 부분
                    Flexible(
                      flex: 6,
                        child: Column(
                          children: [
                            TimerRecordListHeader(timerLog: [],),
                            Flexible(child: TimeRecordList(timeRecord: timeRecord))
                          ],
                        )
                    ),
                    // 여백
                    const SizedBox(height: 10),
                    TimerButton(
                      onTap: () {  },
                      color: mainRed,
                      title: '멈춤',
                    ),
                  ],
                )
            ),
      )),
    );
  }
}
