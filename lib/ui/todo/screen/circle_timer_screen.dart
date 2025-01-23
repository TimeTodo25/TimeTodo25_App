import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/circle_timer_bloc.dart';
import 'package:time_todo/bloc/timer/circle_timer_event.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/circular_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_app_bar.dart';
import 'package:time_todo/ui/todo/widget/timer_log_list_header.dart';
import '../../../bloc/timer/circle_timer_state.dart';
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

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  void initTimer() {
    context.read<CircleTimerBloc>().add(TimerReset());
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
                      child: BlocBuilder<CircleTimerBloc, CircleTimerState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                            Flexible(
                              flex: 7,
                              fit: FlexFit.tight,
                              // 타이머
                              child: CircularTimerIndicator(
                                      timerDuration: state.duration,
                                      startTime: widget.todoData.startTargetDt,
                                      color: widget.categoryColor,
                              ),
                            ),
                              // 여백
                              const SizedBox(height: 10),
                              // 타이머 시간 기록되는 부분
                              Flexible(
                                flex: 6,
                                child: TimerLogListHeader(timerLog: state.timerLog?.logs ?? [])
                              ),
                              // 여백
                              const SizedBox(height: 10),
                              // 타이머 작동 버튼
                              TimerHandleButton(categoryColor: widget.categoryColor)
                            ],
                          );
                        }
                      ),
                    ),
            ),
          )),
      ),
    );
  }
}