import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/routine/routine_bloc.dart';
import 'package:time_todo/bloc/routine/routine_event.dart';
import 'package:time_todo/bloc/routine/routine_state.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/components/widget/time_picker.dart';
import 'package:time_todo/ui/login/widget/join_snackbar.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_done_date_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_repeat_cycle_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_start_date_picker.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_start_time_picker.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';
import '../../../components/widget/main_app_bar.dart';
import '../../../components/widget/responsive_center.dart';
import '../widget/routine_text_field.dart';

@RoutePage(name: "RoutineAddRoute")
class RoutineAddScreen extends StatefulWidget {
  const RoutineAddScreen({
    super.key,
  });

  @override
  State<RoutineAddScreen> createState() => _RoutineAddScreenState();
}

enum DateTimeType {
  startDate,
  endDate,
  startTime,
}

class _RoutineAddScreenState extends State<RoutineAddScreen> {
  TextEditingController _controller = TextEditingController();
  final Debouncer _debouncer = Debouncer(milliseconds: 300);
  DateTime? routineStartDate;
  DateTime? routineDoneDate;
  TimeOfDay? routineStartTime;

  // 루틴 날짜 및 시간 선택
  void selectRoutineDateTime(DateTime value, DateTimeType type) {
    _debouncer(() {
      switch (type) {
        case DateTimeType.startDate:
          routineStartDate = value;
        case DateTimeType.endDate:
          routineDoneDate = value;
        case DateTimeType.startTime:
          routineStartTime = TimeOfDay.fromDateTime(value);
      }
    });
  }

  void dateOverlapCheck() {
    if (routineStartDate != null ||
        routineDoneDate != null &&
            (routineStartDate!.isAfter(routineDoneDate!) ||
                routineDoneDate!.isAtSameMomentAs(routineStartDate!) ||
                DateUtils.isSameDay(routineStartDate!, routineDoneDate!))) {
      routineDoneDate = routineStartDate!.add(Duration(days: 1));
      print('시작일 ${routineStartDate}');
      joinSnackBar(
          context: context, message: '종료일은 시작일 이후여야 합니다. \n 다시 선택해 주세요.');
    }
  }

  // 루틴 날짜 및 시간 업데이트
  void onUpdateRoutineDateTime(DateTimeType type) {
    // 시작일이 종료일보다 늦으면 종료일 리셋
    if (type == DateTimeType.startDate || type == DateTimeType.endDate) {
      dateOverlapCheck();
    }
    switch (type) {
      case DateTimeType.startDate:
        routineStartDate ??= DateTime.now();
        context
            .read<RoutineBloc>()
            .add(RoutineEvent.updateRoutineStartDateEvent(routineStartDate!));
      case DateTimeType.endDate:
        routineDoneDate ??= DateTime.now();
        context
            .read<RoutineBloc>()
            .add(RoutineEvent.updateRoutineDoneDateEvent(routineDoneDate!));
      case DateTimeType.startTime:
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 빈 화면 터치 시 키보드 내리기 위한 코드
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: ResponsiveCenter(
            child: BlocBuilder<RoutineBloc, RoutineState>(
                builder: (context, state) {
              return Column(
                children: [
                  MainAppBar(
                    title: "루틴 등록",
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      Navigator.pop(context);
                      // TODO DB에 루틴 등록하는 로직 작성해야됨
                    },
                  ),
                  SizedBox(height: 10),
                  // 루틴 textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineTextField(
                        tagName: state.categoryName ?? '',
                        tagColor: ColorUtil.getColorFromName(
                            state.categoryColor ?? ''),
                        controller: _controller),
                  ),
                  SizedBox(height: 10),
                  // 루틴 시작일 설정
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: RoutineStartDatePicker(
                        buttonText: state.routineStartDt != null
                            ? DateTimeUtils.formatDate(state.routineStartDt!)
                            : '날짜를 선택하세요',
                        onTap: () {
                          bool confirmedByButton = false;
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => DatePicker(
                              title: '날짜',
                              initialDate: routineStartDate == null
                                  ? DateTime.now()
                                  : state.routineStartDt!,
                              onDateChanged: (DateTime value) {
                                selectRoutineDateTime(
                                    value, DateTimeType.startDate);
                              },
                              onPressed: () {
                                confirmedByButton = true;
                                onUpdateRoutineDateTime(DateTimeType.startDate);
                                Navigator.pop(context);
                              },
                            ),
                          ).then((_) {
                            // 바깥 터치 시 실행
                            if (!confirmedByButton) {
                              if (routineStartDate != routineStartDate) {
                                routineStartDate = routineStartDate;
                              }
                            }
                          });
                        },
                      )),
                  // 루틴 종료일 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineDoneDatePicker(
                      buttonText: state.routineEndDt != null
                          ? DateTimeUtils.formatDate(state.routineEndDt!)
                          : '날짜를 선택하세요',
                      onTap: () {
                        bool confirmedByButton = false;
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DatePicker(
                            title: '날짜',
                            initialDate: routineDoneDate == null
                                ? DateTime.now()
                                : state.routineEndDt!,
                            onDateChanged: (DateTime value) {
                              selectRoutineDateTime(
                                  value, DateTimeType.endDate);
                            },
                            onPressed: () {
                              confirmedByButton = true;
                              onUpdateRoutineDateTime(DateTimeType.endDate);
                              Navigator.pop(context);
                            },
                          ),
                        ).then((_) {
                          // 바깥 터치 시 실행
                          if (!confirmedByButton) {
                            if (routineDoneDate != routineDoneDate) {
                              routineDoneDate = routineDoneDate;
                            }
                          }
                        });
                      },
                    ),
                  ),
                  // 루틴 시작 시간 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineStartTimePicker(
                      buttonText: state.routineStartTime != null
                          ? state.routineStartTime!.formatTimeOnly()
                          : '시간을 선택하세요',
                      onTap: () {
                        bool confirmedByButton = false;
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => TimePicker(
                            onDateTimeChanged: (DateTime value) {
                              selectRoutineDateTime(
                                  value, DateTimeType.startTime);
                            },
                            onPressed: () {
                              confirmedByButton = true;
                              onUpdateRoutineDateTime(DateTimeType.startTime);
                              Navigator.pop(context);
                            },
                          ),
                        ).then((_) {
                          // 바깥 터치 시 실행
                          if (!confirmedByButton) {
                            if (routineStartTime != routineStartTime) {
                              routineStartTime = routineStartTime;
                            }
                          }
                        });
                      },
                    ),
                  ),
                  // 루틴 반복 주기 설정
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RoutineRepeatCyclePicker(),
                  ),
                ],
              );
            }),
          )),
    );
  }
}

extension TimeFormatting on TimeOfDay {
  String formatTimeOnly() {
    String period = hour >= 12 ? 'PM' : 'AM';
    int hourIn12 = hour > 12 ? hour - 12 : hour;
    hourIn12 = hourIn12 == 0 ? 12 : hourIn12;
    String minuteStr = minute.toString().padLeft(2, '0');
    return '$hourIn12:$minuteStr $period';
  }
}
