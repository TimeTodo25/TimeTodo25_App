import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/date_picker_cubit.dart';
import 'package:time_todo/bloc/today_goal/today_goal_edit_cubit.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';

class TodayGoalEditDayButton extends StatefulWidget {
  const TodayGoalEditDayButton({super.key});

  @override
  State<TodayGoalEditDayButton> createState() => _TodayGoalEditDayButtonState();
}

class _TodayGoalEditDayButtonState extends State<TodayGoalEditDayButton> {
  final Debouncer _debouncer = Debouncer(milliseconds: 300);

  @override
  void initState() {
    super.initState();
  }

  void _updateDatePicker(DateTime newDate) {
    _debouncer(() {
      context.read<DatePickerCubit>().changeDate(newDate);
    });
  }

  void _getTodayGoal(DateTime date) {
    context.read<TodayGoalDateCubit>().getTodayGoal(date);
  }

  void _showDatePicker() {
    final currentDate = context.read<TodayGoalDateCubit>().state.goalDate;

    showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return DatePicker(
            height: MediaQuery.of(context).size.height * 0.6,
            title: '날짜',
            initialDate: currentDate,
            onDateChanged: (DateTime value) {
              _updateDatePicker(value);
            },
            onPressed: () {
              final selectedDate = context.read<DatePickerCubit>().state.selectedDate;
              Navigator.pop(context, selectedDate);
            },
          );
        }).then((value) {
          if(value != null) {
            _getTodayGoal(value);
          }
    });
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: _showDatePicker,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: BlocSelector<TodayGoalDateCubit, TodayGoalEditState, DateTime>(
          selector: (state) => state.goalDate,
          builder: (context, goalDate) {
            return Text(
              textAlign: TextAlign.start,
              DateTimeUtils.formatDateDot(goalDate),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 26),
            );
          },
        ),
      ),
    );
  }
}
