import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_target_time_info_text.dart';
import 'package:time_todo/ui/todo/widget/timer/timer_text.dart';
import '../../../../bloc/circle_timer/circle_timer_bloc.dart';
import '../../../../bloc/circle_timer/circle_timer_state.dart';

class CircleTimer extends StatefulWidget {
  final int timerDuration; // 현재 타이머 진행 시간
  final DateTime? startTime; // 시작시간을 설정했다면 띄움
  final Color? color; // indicator 채우는 색상

  CircleTimer({
    super.key,
    required this.timerDuration,
    this.startTime,
    this.color
  });

  @override
  State<CircleTimer> createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> {
  double percent = 0.0;

  @override
  void initState() {
    super.initState();
    initPercent();
  }

  @override
  void didUpdateWidget(covariant CircleTimer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.timerDuration != oldWidget.timerDuration) {
      updatePercent();
    }
  }

  void initPercent() {
    percent = 0.0;
  }

  // 1시간 기준으로 나누어서 1시간 단위로 순환시킴
  void updatePercent() {
      percent = (widget.timerDuration % 3600) / 3600;
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 130,
      lineWidth: 12,
      animation: false,
      // 달성률
      percent: percent,
      backgroundColor: grey1,
      // 위젯 가운데에 나타낼 텍스트
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          // TimerText 부분만 업데이트
          BlocSelector<CircleTimerBloc, CircleTimerState, int>(
              selector: (state) => state.duration,
              builder: (context, state) {
                return Flexible(
                  flex: 4,
                  child: TimerText(
                    duration: state,
                  ),
                );
              }),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: widget.startTime != null
                ? timerTargetTimeInfoText(context, dateTime: widget.startTime)
                : Text(''),
          ),
        ],
      ),
      progressColor: widget.color,
      // progress 테두리 설정
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
