import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar/calendar_bloc.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';

class ContentChangeButton extends StatelessWidget {
  const ContentChangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 상태 변경
        context.read<CalendarBloc>().add(ChangeViewContent());
      },
      child: BlocBuilder<CalendarBloc, CalendarState>(
        buildWhen: (previous, current) => previous.viewContent != current.viewContent,
        builder: (context, state) {
          // 상태에 따른 아이콘 변경
          return state.viewContent == CalendarViewContent.todoCount
              ? const Icon(CupertinoIcons.time, color: grey3)
              : const Icon(CupertinoIcons.time_solid, color: grey3);
        },
      ),
    );
  }
}