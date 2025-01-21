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
import '../widget/linear_timer_bar_graph.dart';
import '../widget/time_record_list.dart';
import '../widget/timer_log_list_header.dart';

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
  late double deviceHeight;
  late double deviceWidth;

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  void initTimer() {
    context.read<LinearTimerBloc>().add(LinearTimerReset());
  }

  void _onStop() {
    context.read<LinearTimerBloc>().add(TimerStop());
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
                titleColor: widget.categoryColor
            ),
            body: ResponsiveCenter(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: BlocBuilder<LinearTimerBloc, LinearTimerState>(
                        builder: (context, state) {
                          return Column(
                        children: [
                          // 앱바 아래 여백
                          const SizedBox(height: 10),
                          // 흐르는 시간 표시
                          Flexible(
                            flex: 4,
                            child: TimerText<TimerBloc>(
                              selectDuration: (_) => state.runningDuration
                            ),
                          ),
                          // 여백
                          const SizedBox(height: 10),
                          // 막대 타이머
                          Flexible(
                            flex: 2,
                            child: LinearTimerBarGraph(segments:state.segments, maxWidth: deviceWidth)
                          ),
                          // 타이머 정지 기록 텍스트가 보이는 부분
                          Flexible(
                            flex: 6,
                              child: Column(
                                children: [
                                  Container(
                                    height: 300, child: TimerLogListHeader(timerLog: state.timerLog?.logs ?? [],)),
                                ],
                              )
                          ),
                          // 여백
                          const SizedBox(height: 10),
                          LinearTimerButton(categoryColor: widget.categoryColor)
                        ],
                      );
                    }
                  ),
                )
            ),
          )
      ),
    );
  }
}