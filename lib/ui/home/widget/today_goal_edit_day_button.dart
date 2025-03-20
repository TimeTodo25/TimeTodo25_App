import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/today_goal/today_goal_state.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

class TodayGoalEditDayButton extends StatefulWidget {
  final DateTime dateTime;

  const TodayGoalEditDayButton({super.key, required this.dateTime});

  @override
  State<TodayGoalEditDayButton> createState() => _TodayGoalEditDayButtonState();
}

class _TodayGoalEditDayButtonState extends State<TodayGoalEditDayButton> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _initDate();
  }

  void _selectDate(DateTime date) {
    _selectedDate = date;
  }

  void _initDate() {
    _selectedDate = widget.dateTime;
  }

  void _updateGoalDate(DateTime date) {
    context.read<TodayGoalBloc>().add(UpdateGoalDate(goalDate: date));
  }

  void _showDatePicker() {
    showModalBottomSheet(
      useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return DatePicker(
            height: MediaQuery.of(context).size.height * 0.6,
            title: '날짜',
            initialDate: widget.dateTime,
            onDateChanged: (DateTime value) {
              _selectDate(value);
            },
            onPressed: () {
              _updateGoalDate(_selectedDate);
              Navigator.pop(context);
            },
          );
        }).then((value) {
      if (value == null) {
        // 백버튼 누르지 않고 외부 터치로 닫은 경우 선택한 값 초기화
        _initDate();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodayGoalBloc, TodayGoalState>(
      builder: (context, state) {
        return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              _showDatePicker();
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                textAlign: TextAlign.start,
                  DateTimeUtils.formatDateDot(state.goalDate),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 26)
              ),
            )
        );
      }
    );
  }
}
