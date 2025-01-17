import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/timer/timer_bloc.dart';
import 'package:time_todo/bloc/timer/timer_event.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/circular_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_record_list_header.dart';
import '../widget/timer_handle_button.dart';

class CircleTimerScreen extends StatefulWidget {
  final Todo todoData;
  final Color categoryColor;
  const CircleTimerScreen({
    super.key,
    required this.todoData,
    required this.categoryColor
  });

  @override
  State<CircleTimerScreen> createState() => _CircleTimerScreenState();
}

class _CircleTimerScreenState extends State<CircleTimerScreen> {
  // 타이머 달성률
  double percent = 0.0;

  @override
  void initState() {
    super.initState();
  }

  // 시작시간만 있거나 둘다 안정했을 때의 화면
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: TimerAppBar(
              title: widget.todoData.content,
              backOnTap: () => Navigator.pop(context),
              titleColor: widget.categoryColor
          ),
          // 반응형 화면
          body: SingleChildScrollView(
            // 스크롤뷰 사이즈 설정
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: ResponsiveCenter(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                        Flexible(
                          flex: 7,
                          fit: FlexFit.tight,
                          // 타이머
                          child: CircularTimerIndicator(
                                  percent: percent,
                                  startTime: widget.todoData.startTargetDt
                          ),
                        ),
                          // 여백
                          const SizedBox(height: 10),
                          // 타이머 시간 기록되는 부분
                          Flexible(
                            flex: 6,
                            child: TimerRecordListHeader()
                          ),
                          // 여백
                          const SizedBox(height: 10),
                          // 타이머 작동 버튼
                          TimerHandleButton(categoryColor: widget.categoryColor)
                        ],
                      ),
                    ),
            ),
          )),
        // ),
      ),
    );
  }
}
