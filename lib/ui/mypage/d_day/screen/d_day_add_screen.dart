import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_event.dart';
import 'package:time_todo/bloc/d_day/d_day_state.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/components/widget/main_switch.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_date_picker_button.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_text_field.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';

import '../../../components/widget/main_app_bar.dart';

@RoutePage(name: "DDayAddRoute")
class DDayAddScreen extends StatefulWidget {
  const DDayAddScreen({super.key});

  @override
  State<DDayAddScreen> createState() => _DDayAddScreenState();
}

class _DDayAddScreenState extends State<DDayAddScreen> {
  final TextEditingController _controller = TextEditingController();
  final Debouncer _debouncer = Debouncer(milliseconds: 300);

  // 지정일
  DateTime? dDayDate;
  // 지정일 이후 삭제 여부
  bool targetDelStatus = false;

  // 지정일 선택
  void selectDdayDate(DateTime date) {
    _debouncer(() {
      dDayDate = date;
    });
  }

  // 지정일 업데이트
  void onUpdateDdayDate() {
    if (dDayDate == null) {
      dDayDate = DateTime.now();
    }
    context.read<DdayBloc>().add(DdayEvent.updateDdayDateEvent(dDayDate!));
  }

  // 지정일 이후 삭제 여부 업데이트
  void onUpdateTargetDelStatus(bool dDayTargetDelStatus) {
    targetDelStatus = dDayTargetDelStatus;
    print('dDayTargetDelStatus : $dDayTargetDelStatus');
    context
        .read<DdayBloc>()
        .add(DdayEvent.updateTargetDelStatusEvent(dDayTargetDelStatus));
  }

  // 디데이 등록
  void onAddDday() {
    final Dday newDday = Dday(
        content: _controller.text,
        targetDt: dDayDate!,
        targetDelStatus: targetDelStatus ? 'Y' : 'N',
        createDt: DateTime.now(),
        updateDt: DateTime.now(),
        status: 'Y');

    context.read<DdayBloc>().add(DdayEvent.createDdayEvent(newDday));

    dDayDate = null;
    _controller.clear();
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
          child: Column(
            children: [
              MainAppBar(
                title: "D-day 등록",
                backOnTap: () {
                  context.router.popForced('DDayMainRoute');
                },
                actionText: "완료",
                actionOnTap: () {
                  onAddDday();
                  context.router.popForced('DDayMainRoute');
                },
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: DDayTextField(
                  hintText: "D-day 작성",
                  controller: _controller,
                ),
              ),
              SizedBox(height: 10),
              // 지정일 데이트 피커
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                    BlocBuilder<DdayBloc, DdayState>(builder: (context, state) {
                  return DdayDatePickerButton(
                    // 화면에 표시되는 날짜
                    buttonText: dDayDate != null
                        ? DateTimeUtils.formatDate(dDayDate!)
                        : '날짜를 선택하세요',
                    onTap: () {
                      bool confirmedByButton = false;
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => DatePicker(
                          title: '날짜',
                          initialDate: dDayDate == null
                              ? DateTime.now()
                              : state.dDayDate!,
                          onDateChanged: (DateTime value) {
                            selectDdayDate(value);
                          },
                          onPressed: () {
                            confirmedByButton = true;
                            onUpdateDdayDate();
                            Navigator.pop(context);
                          },
                        ),
                      ).then((_) {
                        // 바깥 터치 시 실행
                        if (!confirmedByButton) {
                          if (dDayDate != state.dDayDate) {
                            dDayDate = state.dDayDate;
                          }
                        }
                      });
                    },
                  );
                }),
              ),
              BlocBuilder<DdayBloc, DdayState>(builder: (context, state) {
                return MainSwitch(
                  textStyle: Theme.of(context).textTheme.labelSmall,
                  title: "지정일 이후 삭제",
                  onChanged: (value) {
                    print('value : $value');
                    onUpdateTargetDelStatus(value);
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
