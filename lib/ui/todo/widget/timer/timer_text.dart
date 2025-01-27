import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class TimerText extends StatelessWidget {
//   final int duration;
//
//   const TimerText({super.key, required this.duration});
//
//   @override
//   Widget build(BuildContext context) {
//     // 시간, 분, 초 계산
//     final hoursStr = (duration ~/ 3600).toString().padLeft(2, '0'); // 시간
//     final minutesStr = ((duration % 3600) ~/ 60).toString().padLeft(2, '0'); // 분
//     final secondsStr = (duration % 60).toString().padLeft(2, '0'); // 초
//
//     return Text(
//       '$hoursStr : $minutesStr : $secondsStr',
//       style: Theme.of(context).textTheme.titleLarge
//     );
//   }
// }

/// 제네릭을 사용한 재사용 가능한 TimerText 위젯
class TimerText<T> extends StatelessWidget {
  final int Function(T state) selectDuration;

  const TimerText({super.key, required this.selectDuration});

  @override
  Widget build(BuildContext context) {
    // 선택한 Bloc 상태에 맞는 duration 값 선택
    final duration = context.select<T, int>((bloc) => selectDuration(bloc));

    // 시간, 분, 초 계산
    final hoursStr = (duration ~/ 3600).toString().padLeft(2, '0'); // 시간
    final minutesStr = ((duration % 3600) ~/ 60).toString().padLeft(2, '0'); // 분
    final secondsStr = (duration % 60).toString().padLeft(2, '0'); // 초

    return Text(
      '$hoursStr : $minutesStr : $secondsStr',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}