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
import '../widget/linear_timer_bar_graph.dart';
import '../widget/timer_log_list_header.dart';
import '../widget/timer_target_time_info_text.dart';

class LinearTimerScreen extends StatefulWidget {
  final Todo todoData;
  final Color categoryColor;

  const LinearTimerScreen(
      {super.key, required this.todoData, required this.categoryColor});

  @override
  State<LinearTimerScreen> createState() => _LinearTimerScreenState();
}

class _LinearTimerScreenState extends State<LinearTimerScreen> {
  late double deviceHeight;
  late double deviceWidth;
  double targetTime = 0;

  @override
  void initState() {
    super.initState();
    initTimer();
    _getTotalTargetTime();
  }

  void initTimer() {
    context.read<LinearTimerBloc>().add(LinearTimerReset());
  }

  void _onStop() {
    context.read<LinearTimerBloc>().add(TimerStop());
  }

  // 목표시간을 기준으로 최대 그래프 넓이 계산
  void _getTotalTargetTime() {
    final startTime = widget.todoData.startTargetDt;
    final endTime = widget.todoData.endTargetDt;

    if (startTime != null && endTime != null) {
      targetTime = endTime.difference(startTime).inSeconds.toDouble();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width * 0.9;
    deviceHeight = MediaQuery.of(context).size.height * 0.8;
  }

  @override
  void dispose() {
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
            backOnTap: () {
              _onStop();
              Navigator.pop(context);
            },
            titleColor: widget.categoryColor),
        body: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              // 상단의 메인 내용
              BlocBuilder<LinearTimerBloc, LinearTimerState>(
                buildWhen: (previous, current) {
                  // segments가 변경된 경우에만 그래프 재빌드
                  return previous.segments.length != current.segments.length;
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      // 앱바 아래 여백
                      const Spacer(),
                      // 흐르는 시간 표시 텍스트. 1초 마다 재빌드
                      BlocBuilder<LinearTimerBloc, LinearTimerState>(
                          buildWhen: (previous, current) {
                            return previous.runningDuration != current.runningDuration;
                            },
                          builder: (context, durationState) {
                            return Flexible(
                              flex: 4,
                              child: TimerText<LinearTimerBloc>(
                                selectDuration: (_) => durationState.runningDuration,
                              ),
                            );
                          }),
                      const Spacer(),
                      // 타이머 위쪽에 띄울 시작시간, 마침시간 정보 텍스트
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            timerTargetTimeInfoText(context,
                                dateTime: widget.todoData.startTargetDt),
                            timerTargetTimeInfoText(context,
                                dateTime: widget.todoData.endTargetDt)
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      // 막대 타이머
                      Flexible(
                        flex: 2,
                        child: LinearTimerBarGraph(
                          segments: state.segments,
                          maxWidth: deviceWidth,
                          graphColor: widget.categoryColor,
                          targetTime: targetTime,
                        ),
                      ),
                      const Spacer(flex: 2),
                      // 타이머 정지 기록 텍스트가 보이는 부분
                      Flexible(
                        flex: 6,
                        child: TimerLogListHeader(
                          timerLog: state.timerLog?.logs ?? [],
                        ),
                      ),
                    ],
                  );
                },
              ),
              // 하단 고정 버튼
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10), // 버튼과 하단 간격
                  child: LinearTimerButton(categoryColor: widget.categoryColor),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
