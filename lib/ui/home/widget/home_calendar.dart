import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar_state.dart';
import 'package:time_todo/ui/home/widget/content_change_button.dart';
import 'package:time_todo/ui/home/widget/todo_graph_painter.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {

  // 캘린더 날짜 설정
  final kToday = DateTime.now();
  final kFirstDay = DateTime(2000, 1, 1);
  final kLastDay = DateTime(2200, 1, 1);

  // 달력 표시형식 month, 2week, week
  // CalendarFormat _calendarFormat = CalendarFormat.month;

  // 현재 달력의 중심에 표시된 날짜. 달력에서 해당 날짜가 속한 월을 보여주기 위해 사용됨.
  DateTime _focusedDay = DateTime.now();

  // 사용자가 특정 날짜를 선택했을 때 그 날짜를 저장하는 변수
  DateTime _selectedDay = DateTime.now();

  // 캘린더 셀 높이 지정
  final double _rowHeight = 70;

  // 하루에 하나의 이벤트를 저장하는 맵
  // 날짜, 그날 달성한 투두 총 시간 받아와야 함
  // 아이콘 선택 여부에 따라 다른 값을 보여줘야 하기 때문에 두 가지 상태의 이벤트 맵을 각각 설정
  Map<DateTime, String> _eventsTodoTime = {
    // key : value
    DateTime.utc(2024, 10, 31) : '8h',
    DateTime.utc(2024, 11, 1) : '10h',
  };

  // 날짜, 그날 달성한 투두 총 개수 받아와야 함
  Map<DateTime, String> _eventsTodoCount = {
    // key : value
    DateTime.utc(2023, 11, 1) : '14',
    DateTime.utc(2024, 11, 2) : '10',
  };


  // 전체 투두 달성률
  double clearPercent = 80;

// 카테고리별 정보를 담고 있는 리스트 (달성률, 색상)
  List<TodoItem> exTodo = [
    TodoItem(categoryPercent: 70.0, categoryColor: mainBlue),
    TodoItem(categoryPercent: 100.0, categoryColor: mainRed),
    TodoItem(categoryPercent: 40.0, categoryColor: mainGreen),
    TodoItem(categoryPercent: 20.0, categoryColor: mainYellow),
  ];


  // 현재 뷰에 따라 표시되는 이벤트 텍스트
  // true일 때 시간 형식, false일 때 값 형식
  bool _isHoursView = true;

  // 현재 달력의 모든 날짜 중, 특정 날짜를 선택한 것으로 표시할지 여부를 결정하는 함수
  bool _selectedDayPredicate(DateTime day) {
    // 현재 월 범위를 벗어난 날짜도 선택 가능하도록 설정
    return isSameDay(_selectedDay, day);
  }


  // 날짜 선택 시, selectedDay 와 focusedDay 값 업데이트
  void _onDaySelected(selectedDay, focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  // 날짜에 해당하는 이벤트를 반환하는 메서드
  List<String> getEventsForDate(DateTime date) {
    // 이벤트에 띄울 내용이 Todo 총 시간 일 때
    if (_isHoursView && _eventsTodoTime.containsKey(date)) {
      return [_eventsTodoTime[date]!];
      // 이벤트에 띄울 내용이 Todo 총 개수 일 때
    } else if (!_isHoursView && _eventsTodoCount.containsKey(date)) {
      return [_eventsTodoCount[date]!];
    }
    // 이벤트가 아무 것도 없을 때
    return [];
  }

  void _onToggleView(bool isClicked) {
    setState(() {
      _isHoursView = isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return TableCalendar(
          // key: _calendarKey,
          focusedDay: _focusedDay,
          firstDay: kFirstDay,
          lastDay: kLastDay,
          // 한국어 패치
          locale: 'ko',
          // 월 전환시 좌우 스와이프
          availableGestures: AvailableGestures.horizontalSwipe,
          // 셀 높이 지정
          rowHeight: _rowHeight,
          calendarBuilders: _calendarBuilders(),
          calendarFormat: state.format,
          calendarStyle: _calendarStyle(),
          headerStyle: _headerStyle(),
          onDaySelected: _onDaySelected,
          // 셀 안에 이벤트 띄우기
          eventLoader: (date) => getEventsForDate(date),
          // 일월화수목금토 텍스트
          daysOfWeekVisible: false,
          selectedDayPredicate: _selectedDayPredicate,
        );
      }
    );
  }


// 캘린더 스타일 커스텀
  CalendarStyle _calendarStyle() {
    // 기본 적용되는 데코레이션 없애기
    BoxDecoration noDecoration = BoxDecoration(
        border: Border.all(color: Colors.transparent));

    // 텍스트 적용
    TextStyle calendarText = Theme
        .of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontSize: 12);


    return CalendarStyle(
      // 라이브러리 기본 데코레이션 설정 안보이도록 설정
      defaultDecoration: noDecoration,
      weekendDecoration: noDecoration,
      markerDecoration: noDecoration,
      disabledDecoration: noDecoration,
      outsideDecoration: noDecoration,

      // 선택된 날짜 설정
      selectedTextStyle: calendarText,
      selectedDecoration: BoxDecoration(
          border: Border.all(color: grey3, width: 1.0)),
      // 현재 월이 아닌 날짜 관련 설정 (false : 현재 월만 보이도록)
      outsideDaysVisible: true,
      outsideTextStyle: calendarText,
      // 오늘 날짜 설정
      todayDecoration: BoxDecoration(
          border: Border.all(color: mainRed, width: 1.0)),
      todayTextStyle: calendarText,
      // 주말 텍스트 스타일 설정
      weekendTextStyle: calendarText,
      // 캘린더 전체 설정
      defaultTextStyle: calendarText,
      // 캘린더 선
      tableBorder: const TableBorder(
          verticalInside: BorderSide(color: grey2),
          horizontalInside: BorderSide(color: grey2),
          top: BorderSide(color: grey2)
      ),
      // 셀 안의 날짜 텍스트 배치
      cellAlignment: Alignment.topRight,
      // 선택된 테두리와 캘린더 테두리 구분을 위해 마진 추가
      cellMargin: EdgeInsets.all(0.5),
      cellPadding: EdgeInsets.only(right: 5),
      canMarkersOverflow: true, // true : marker가 셀 경계를 넘어서 그려짐
    );
  }

// 캘린더 헤더 스타일 커스텀
  HeaderStyle _headerStyle() {
    return const HeaderStyle(
      headerPadding: EdgeInsets.zero,
      // 월 전환 화살표 없앰
      leftChevronVisible: false,
      rightChevronVisible: false,
      // 기본 제공되는 달력 전환 버튼 없앰
      formatButtonVisible: false,
    );
  }

// 그 외, 지정된 style 클래스를 통해 변경할 수 없는 부분을 설정하는 빌더
  CalendarBuilders _calendarBuilders() {
    return CalendarBuilders(
      // 캘린더 헤더 타이틀 커스텀
        headerTitleBuilder: (context, day) {
          return Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // 이 부분 추가
                  children: [
                    Row(
                      // 왼쪽
                      children: [
                        const SizedBox(width: 4),
                        GestureDetector(
                          child: Icon(CupertinoIcons.back, color: grey3,),
                          onTap: () {

                          },
                        ),
                        // 여백
                        const SizedBox(width: 4),
                        // 연월 표시
                        Text('${day.year}년 ${day.month}월',
                            style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium),
                      ],
                    ),
                    // 오른쪽
                    Row(
                      children: [
                        // 달력 내에 표시할 내용 전환하는 버튼
                        ContentChangeButton(
                          onToggle: _onToggleView,
                        ),
                        // 달력 형식 전환 버튼
                        calChangeButton()
                      ],
                    )
                  ]),
              // 일월화수목금토
              weekHeader()
            ],
          );
        },
      // 해당 날짜에 이벤트가 있다면 어떻게 표시할지
      markerBuilder: (context, date, events) {
        // 선택한 날짜의 이벤트에 따라 텍스트 표시
        String eventText = _isHoursView
            ? _eventsTodoTime[date] ?? ''
            : _eventsTodoCount[date] ?? '';

        if (eventText.isNotEmpty) {
          return Positioned(
            bottom: 10,
            child: CustomPaint(
              // 도넛 그래프의 크기 (width, height)
              size: Size(_rowHeight / 2, _rowHeight / 2),
              painter: PieChart(clearPercent: 80, todoItem: exTodo, text: eventText),
          ));
        }
        return null;
      },
    );
  }

// 오늘 날짜로 돌아가는 버튼
// Widget todayButton() {
//   return SizedBox(
//     height: 25,
//     width: 25,
//     child: IconButton(
//         padding: EdgeInsets.zero,
//         onPressed: () {
//           setState(() {
//             _selectedDay = DateTime.now();
//             _focusedDay = DateTime.now();
//           });
//         },
//         icon: const Icon(
//             Icons.calendar_today_rounded,
//             size: 16,
//             color: grey2
//         )
//     ),
//   );
// }



// 달력(month, 2weeks, week) 전환 버튼
  Widget calChangeButton() {
    return IconButton(
      onPressed: () {
        context.read<CalendarBloc>().toggleFormat();
      },
      icon: Icon(CupertinoIcons.calendar, color: grey3, size: 24),
    );
  }

// 일월화수목금토
  Widget weekHeader() {
    List<String> week = ['일', '월', '화', '수', '목', '금', '토'];
    TextStyle weekTextStyle = Theme
        .of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontSize: 12);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      // 일월화수목금 위쪽 테두리. 아래쪽 테두리는 캘린더 기본 테두리임
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: grey2))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(week[0], style: weekTextStyle),
          Text(week[1], style: weekTextStyle),
          Text(week[2], style: weekTextStyle),
          Text(week[3], style: weekTextStyle),
          Text(week[4], style: weekTextStyle),
          Text(week[5], style: weekTextStyle),
          Text(week[6], style: weekTextStyle),
        ],
      ),
    );
  }
}