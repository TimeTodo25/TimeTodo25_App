import 'package:flutter/material.dart';
import 'package:time_todo/assets/colors/color.dart';

class RoutineRepeatCyclePicker extends StatefulWidget {
  const RoutineRepeatCyclePicker({super.key});

  @override
  State<RoutineRepeatCyclePicker> createState() => _RoutineRepeatCyclePickerState();
}

class _RoutineRepeatCyclePickerState extends State<RoutineRepeatCyclePicker> {
  List<bool> isSelected = [true, false, false];
  List<bool> selectedDay = [true, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    // 화면 사이즈 측정하여 레이아웃 반영
    double deviceWidth = MediaQuery.of(context).size.width;

    return deviceWidth < 700 ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "반복주기",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            isSelected.length,
                (index) {
              EdgeInsetsGeometry margin;
              // 각 버튼에 맞는 패딩 설정
              if (index == 0) {
                // "매일": 왼쪽 패딩 없고 오른쪽 패딩 10
                margin = EdgeInsets.only(left: 0, right: 5, top: 10);
              } else if (index == 1) {
                // "매주": 왼쪽 패딩 10, 오른쪽 패딩 10
                margin = EdgeInsets.only(left: 5, right: 5, top: 10);
              } else {
                // "매월": 왼쪽 패딩 10, 오른쪽 패딩 없고
                margin = EdgeInsets.only(left: 5, right: 0, top: 10);
              }

              return Expanded(
                child: Container(
                  margin: margin,
                  child: ToggleButton(
                    text: ["매일", "매주", "매월"][index],
                    textColor: [mainBlue, mainRed, mainYellow][index],
                    borderColor: [mainBlue, mainRed, mainYellow][index],
                    isSelected: isSelected[index],
                    onPressed: () => _onTogglePressed(index),
                  ),
                ),
              );
            },
          ),
        ),
        if (isSelected[1]) _buildWeeklyDaysSelector(), // "매주" 선택 시에만 표시
        if (isSelected[2]) _buildMonthDaysSelector(), // "매월" 선택 시에만 표시
      ],
    ) : Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "반복주기",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            )),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  isSelected.length,
                      (index) {
                    EdgeInsetsGeometry margin;
                    // 각 버튼에 맞는 패딩 설정
                    if (index == 0) {
                      // "매일": 왼쪽 패딩 없고 오른쪽 패딩 10
                      margin = EdgeInsets.only(left: 0, right: 5, top: 10);
                    } else if (index == 1) {
                      // "매주": 왼쪽 패딩 10, 오른쪽 패딩 10
                      margin = EdgeInsets.only(left: 5, right: 5, top: 10);
                    } else {
                      // "매월": 왼쪽 패딩 10, 오른쪽 패딩 없고
                      margin = EdgeInsets.only(left: 5, right: 0, top: 10);
                    }

                    return Expanded(
                      child: Container(
                        margin: margin,
                        child: ToggleButton(
                          text: ["매일", "매주", "매월"][index],
                          textColor: [mainBlue, mainRed, mainYellow][index],
                          borderColor: [mainBlue, mainRed, mainYellow][index],
                          isSelected: isSelected[index],
                          onPressed: () => _onTogglePressed(index),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (isSelected[1]) _buildWeeklyDaysSelector(), // "매주" 선택 시에만 표시
              if (isSelected[2]) _buildMonthDaysSelector(), // "매월" 선택 시에만 표시
            ],
          ),
        )

      ],
    );
  }

  void _onTogglePressed(int index) {
    setState(() {
      isSelected = List.generate(isSelected.length, (i) => i == index);
    });
  }

  // 요일 선택 위젯을 동적으로 생성
  Widget _buildWeeklyDaysSelector() {
    List<String> days = ["월", "화", "수", "목", "금", "토", "일"];
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            days.length,
                (index) => Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: ToggleButton(
                    text: days[index],
                    textColor: selectedDay[index] ? mainRed : grey3,
                    borderColor: mainRed,
                    isSelected: selectedDay[index],
                    onPressed: () => _onTogglePressedDay(index),
                  ),
                )
            )
        ),
      ),
    );
  }

  Widget _buildMonthDaysSelector() {
    List<String> days = List.generate(31, (index) => (index + 1).toString())..add("마지막날");

    if (selectedDay.length != days.length) {
      selectedDay = List.generate(days.length, (_) => false);
    }

    List<Widget> rows = [];
    for (int i = 0; i < days.length; i += 7) {
      bool isLastRow = i + 7 >= days.length; // 마지막 줄인지 확인
      rows.add(
        Row(
          children: List.generate(
            isLastRow ? 4 : 7, // 마지막 줄은 4개만 표시
                (index) {
              int dayIndex = i + index;
              // 마지막 줄의 마지막 "마지막날" 버튼만 남은 공간을 모두 차지하도록 설정
              if (isLastRow && dayIndex == days.length - 1) {
                return Expanded(
                  flex: 4, // 남은 공간을 전부 차지하도록 flex 설정
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: ToggleButton(
                      text: days[dayIndex],
                      textColor: selectedDay[dayIndex] ? mainYellow : grey3,
                      borderColor: mainYellow,
                      isSelected: selectedDay[dayIndex],
                      onPressed: () => _onTogglePressedDay(dayIndex),
                    ),
                  ),
                );
              }
              else {
                // 나머지 버튼들은 균등하게 분할되도록 Expanded 사용
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: ToggleButton(
                      text: days[dayIndex],
                      textColor: selectedDay[dayIndex] ? mainYellow : grey3,
                      borderColor: mainYellow,
                      isSelected: selectedDay[dayIndex],
                      onPressed: () => _onTogglePressedDay(dayIndex),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: rows,
      ),
    );
  }


  void _onTogglePressedDay(int index) {
    setState(() {
      selectedDay[index] = !selectedDay[index];
    });
  }
}

class ToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;

  const ToggleButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
    required this.textColor,
    required this.borderColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        alignment: Alignment.center,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          border: isSelected ? Border.all(color: borderColor, width: 2) : null,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: 'pretendardSemiBold',
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
