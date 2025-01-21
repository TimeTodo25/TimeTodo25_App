import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/linear_timer_button.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_text.dart';
import '../../../bloc/linear_timer/linear_timer_bloc.dart';
import '../../../bloc/linear_timer/linear_timer_event.dart';
import '../../../bloc/linear_timer/linear_timer_state.dart';
import '../../../bloc/timer/timer_bloc.dart';
import '../../../bloc/timer/timer_event.dart';
import '../../utils/timer_log_entry.dart';

class LinearTimerScreen extends StatefulWidget {
  final Todo todoData;
  final Color categoryColor;

  const LinearTimerScreen({
    super.key,
    required this.todoData, required this.categoryColor
  });

  @override
  State<LinearTimerScreen> createState() => _LinearTimerScreenState();
}

class _LinearTimerScreenState extends State<LinearTimerScreen> {
  double percent = 0.7;
  double maxWidth = 300;

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  void initTimer() {
    context.read<TimerBloc>().add(TimerReset());
  }

  void _onReset() {
    context.read<LinearTimerBloc>().add(LinearTimerReset());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width * 0.9;
  }

  @override
  void dispose() {
    _onReset();
    super.dispose();
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
                titleColor: widget.categoryColor
            ),
            body: ResponsiveCenter(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Column(
                      children: [
                        // 앱바 아래 여백
                        const SizedBox(height: 10),
                        // 흐르는 시간 표시
                        Flexible(
                          flex: 4,
                          child: TimerText(),
                        ),
                        // 여백
                        const SizedBox(height: 10),
                        // 막대 타이머
                        Flexible(
                          flex: 2,
                          child: BlocBuilder<LinearTimerBloc, LinearTimerState>(
                            buildWhen: (previous, current) {
                              // 이전 상태와 현재 상태의 `segments` 개수가 다를 때만 빌드
                              return previous.segments.length != current.segments.length;
                            },
                            builder: (context, state) {
                              return buildBarGraph(state.segments, maxWidth);
                            },
                          )
                        ),
                        // 타이머 정지 기록 텍스트가 보이는 부분
                        // Flexible(
                        //   flex: 6,
                        //     child: Column(
                        //       children: [
                        //         TimerRecordListHeader(timerLog: [],),
                        //         Flexible(child: TimeRecordList(timeRecord: timeRecord))
                        //       ],
                        //     )
                        // ),
                        // 여백
                        const SizedBox(height: 10),
                        LinearTimerButton(categoryColor: widget.categoryColor)
                      ],
                    ),
                  ),
                )
            ),
      )),
    );
  }
}


Widget buildBarGraph(List<TimerLogEntry> segments, double maxWidth) {
  double totalWidth = 0; // 현재까지 그려진 전체 너비

  return Row(
    children: segments.map((segment) {
      // 각 세그먼트의 너비를 계산
      final segmentWidth = segment.spendTime?.toDouble() ?? 0;
      final lastSegmentType = segment.type;
      print("buildBarGraph buildBarGraph buildBarGraph buildBarGraph");

      // 추가된 너비가 화면을 초과하는지 확인
      if (totalWidth + segmentWidth > maxWidth) {
        // 초과 시 남은 공간만 채우고 종료
        final remainingWidth = maxWidth - totalWidth;
        if (remainingWidth > 0) {

          totalWidth += remainingWidth;
          return Container(
            width: remainingWidth,
            height: 20,
            // 마지막 로그가 startd -> 현재 상태는 paused
            color: lastSegmentType == TimerLogType.started ? Colors.red : Colors.green,
          );
        } else {
          return Container(); // 더 이상 그리지 않음
        }
      }

      // 초과하지 않으면 그대로 그리기
      totalWidth += segmentWidth;
      return Container(
        width: segmentWidth.clamp(0, maxWidth), // 막대 길이
        height: 20,
        color: lastSegmentType == TimerLogType.started ? Colors.red : Colors.green,
      );
    }).toList(),
  );
}