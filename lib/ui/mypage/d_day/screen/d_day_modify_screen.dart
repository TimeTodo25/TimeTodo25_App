import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_event.dart';
import 'package:time_todo/bloc/d_day/d_day_state.dart';
import 'package:time_todo/entity/d_day/d_day_tbl.dart';
import 'package:time_todo/ui/components/buttons/main_delete_button.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/d_day/widget/d_day_date_picker_button.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
// import 'package:time_todo/ui/utils/debouncer.dart';
import '../../../components/widget/main_app_bar.dart';
import '../../../components/widget/main_switch.dart';
import '../widget/d_day_text_field.dart';

@RoutePage(name: 'DDayModifyRoute')
class DDayModifyScreen extends StatefulWidget {
  const DDayModifyScreen({super.key});

  @override
  State<DDayModifyScreen> createState() => _DDayModifyScreenState();
}

class _DDayModifyScreenState extends State<DDayModifyScreen> {
  final TextEditingController _controller = TextEditingController();
  // 데이터 피커에서 버튼 누르고 바로 데이터 피커 닫히는 것을 방지하기 위한 디바운서
  // final Debouncer _debouncer = Debouncer(milliseconds: 300);

  // 지정일
  DateTime? _dDayDate;
  // 지정일 이후 삭제 여부
  bool? _targetDelStatus;

  // 지정일 선택
  void selectDdayDate(DateTime date) {
    _dDayDate = date;
  }

  // 디데이 내용 변경
  void onUpdateDdayContent(String value) {
    context.read<DdayBloc>().add(DdayEvent.updateDdayContentEvent(value));
  }

  // 지정일 업데이트
  void onUpdateDdayDate() {
    print('-----지정일 업데이트임 호출: ${_dDayDate!.toString()}');
    if (_dDayDate == null) {
      _dDayDate = DateTime.now();
    }
    context.read<DdayBloc>().add(DdayEvent.updateDdayDateEvent(_dDayDate!));
  }

  // 지정일 이후 삭제 여부 업데이트
  void onUpdateTargetDelStatus(bool dDayTargetDelStatus) {
    context
        .read<DdayBloc>()
        .add(DdayEvent.updateTargetDelStatusEvent(dDayTargetDelStatus));
  }

  // 디데이 수정
  void onUpdateDday(int idx) {
    print('-----onUpdateDdayDate 호출: ${_dDayDate!.toString()}');

    final Dday newDday = Dday(
        idx: idx,
        content: _controller.text,
        targetDt: _dDayDate!,
        targetDelStatus: _targetDelStatus == true ? 'Y' : 'N',
        createDt: DateTime.now(),
        updateDt: DateTime.now(),
        status: 'Y');

    context.read<DdayBloc>().add(DdayEvent.updateDdayEvent(newDday));
    onCleanDdayDetail();

    _dDayDate = null;
    _controller.clear();
  }

  // 디데이 삭제
  void onDeleteDday(int idx) {
    onCleanDdayDetail();
    context.read<DdayBloc>().add(DdayEvent.deleteDdayEvent(idx));

    _dDayDate = null;
    _controller.clear();
  }

  // 디데이 상세 초기화
  void onCleanDdayDetail() {
    context.read<DdayBloc>().add(DdayEvent.cleanDdayDetailEvent());
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
          child: BlocBuilder<DdayBloc, DdayState>(
            builder: (context, state) {
              if (state.dDay != null) {
                _controller.text = state.content ?? '';
                _dDayDate = state.dDayDate;
                _targetDelStatus = state.targetDelStatus == 'Y' ? true : false;
              }
              return Column(
                children: [
                  MainAppBar(
                    title: "D-day 수정",
                    backOnTap: () {
                      onCleanDdayDetail();
                      context.router.popForced('DDayMainRoute');
                    },
                    actionText: "완료",
                    actionOnTap: () {
                      onUpdateDday(state.idx!);
                      context.router.popForced('DDayMainRoute');
                    },
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DDayTextField(
                      hintText: "D-day 작성",
                      controller: _controller,
                      onChanged: (value) {
                        onUpdateDdayContent(value);
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: BlocBuilder<DdayBloc, DdayState>(
                        builder: (context, state) {
                      return DdayDatePickerButton(
                        // 화면에 표시되는 날짜
                        buttonText: _dDayDate != null
                            ? DateTimeUtils.formatDate(state.dDayDate!)
                            : '날짜를 선택하세요',
                        onTap: () {
                          bool confirmedByButton = false;
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => DatePicker(
                              title: '날짜',
                              initialDate: state.dDayDate == null
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
                              if (_dDayDate != state.dDayDate) {
                                _dDayDate = state.dDayDate;
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
                      is_checked: state.targetDelStatus == 'Y' ? true : false,
                      onChanged: (value) {
                        onUpdateTargetDelStatus(value);
                      },
                    );
                  }),
                  Spacer(),
                  //삭제 버튼
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: MainDeleteButton(
                      onTap: () {
                        onDeleteDday(state.idx!);
                        context.router.popForced('DDayMainRoute');
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
