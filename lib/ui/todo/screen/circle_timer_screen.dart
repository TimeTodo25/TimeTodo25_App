import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_event.dart';
import 'package:time_todo/bloc/timer/circle_timer/circle_timer_bloc.dart';
import 'package:time_todo/bloc/timer/circle_timer/circle_timer_event.dart';
import 'package:time_todo/bloc/timer/timer_history/timer_history_bloc.dart';
import 'package:time_todo/bloc/timer/timer_history/timer_history_state.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/todo/widget/timer/circle_timer.dart';
import 'package:time_todo/ui/todo/widget/timer_log/timer_log_list_header.dart';
import '../../../bloc/timer/timer_history/timer_history_event.dart';
import '../../../entity/timer/timer_tbl.dart';
import '../widget/timer/timer_app_bar.dart';
import '../widget/timer/circle_timer_handle_button.dart';

@RoutePage(name: 'CircleTimerRoute')
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
    _resetTimer();
    _fetchTimerHistory();
  }

  void _resetTimer() {
    context.read<CircleTimerBloc>().add(const TimerReset());
  }

  void _onStopTimerStream() {
    context.read<CircleTimerBloc>().add(TimerStreamStop());
  }

  int _getTodoIndex() {
    final copyTodo = context.read<TodoDetailBloc>().state.lastAddedTodo;
    if(copyTodo == null) {
      return widget.todoData.idx ?? 0;
    } else {
      return copyTodo.idx ?? 0;
    }
  }

  void _saveHistory() {
    _onSaveTimerHistory();
    _onStopTimerStream();
    _onResetTodoIndex();
    _fetchHasTimerHistory();
  }

  void _onSaveTimerHistory() {
    final timerModels = context.read<CircleTimerBloc>().state.timerModels;
    context.read<TimerHistoryBloc>().add(SaveTimerHistory(todoIdx: _getTodoIndex(), timerModels: timerModels));
  }

  void _fetchTimerHistory() {
    context.read<TimerHistoryBloc>().add(FetchTimerHistory(todoIdx: _getTodoIndex()));
  }

  void _onResetTodoIndex() {
    context.read<TodoDetailBloc>().add(InitTodo());
  }

  // 타이머 기록 추가 시 Home Todo UI update
  void _fetchHasTimerHistory() {
    context.read<AllTimerBloc>().add(GetTimerHistoryByDate(date: DateTime.now()));
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
              backOnTap: () => {
                _saveHistory(),
                Navigator.pop(context)
          },
              titleColor: widget.categoryColor
          ),
          // 반응형 화면
          body: SingleChildScrollView(
            // 스크롤뷰 사이즈 설정
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: ResponsiveCenter(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                            children: [
                            Flexible(
                              flex: 7,
                              fit: FlexFit.tight,
                              // 타이머
                              child: CircleTimer(
                                      timerDuration: context.read<CircleTimerBloc>().state.duration,
                                      startTime: widget.todoData.startTargetDt,
                                      color: widget.categoryColor,
                              ),
                            ),
                              // 여백
                              const SizedBox(height: 10),
                              // 타이머 시간 기록되는 부분
                              Flexible(
                                flex: 6,
                                child:
                                BlocSelector<TimerHistoryBloc, TimerHistoryState, List<TimerModel>>(
                                    selector: (state) => state.timerModels,
                                    builder: (context, timerModels) {
                                      return TimerLogListHeader(timerLog: timerModels);
                                    }
                                )
                              ),
                              // 여백
                              const SizedBox(height: 10),
                              // 타이머 작동 버튼
                              CircleTimerHandleButton(
                                  todoIdx: _getTodoIndex(),
                                  categoryColor: widget.categoryColor
                              )
                            ],
                      ),
                    ),
            ),
          )),
      ),
    );
  }
}