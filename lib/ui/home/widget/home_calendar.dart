import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar/calendar_bloc.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';
import 'package:time_todo/entity/calendar/day_calendar_data.dart';
import 'package:time_todo/ui/home/widget/content_change_button.dart';
import 'package:time_todo/ui/home/widget/todo_achievement_graph_painter.dart';

import '../../../bloc/todo/todo_state.dart';
import '../../../entity/todo/todo_tbl.dart';

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

  // 현재 달력의 중심에 표시된 날짜. 달력에서 해당 날짜가 속한 월을 보여주기 위해 사용됨.
  DateTime _focusedDay = DateTime.now();

  // 사용자가 특정 날짜를 선택했을 때 그 날짜를 저장하는 변수
  DateTime _selectedDay = DateTime.now();

  // 캘린더 셀 높이 지정
  final double _rowHeight = 70;

  // 현재 뷰에 따라 표시되는 이벤트 텍스트
  // true일 때 시간 형식, false일 때 값 형식
  bool _isHoursView = true;

  List<DayCalendarData> _currentEvents = [];

  @override
  void initState() {
    super.initState();
    _getAllValidTodoByMonth(null);
  }

  // 월별 투두 불러오기
  // 현재 캘린더와 Month 가 일치 하고, 달성도가 0 이 아닌 투두
  void _getAllValidTodoByMonth(DateTime? date) {
    context.read<TodoBloc>().add(GetTodoByMonth(date: date ?? DateTime.now()));
  }

  void _fetchCalendarByTodoData(List<Todo> todos) {
    context.read<CalendarBloc>().add(FetchCalendarData(todos));
  }

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

  // // 날짜에 해당하는 이벤트를 반환하는 메서드
  // List<String> getEventsForDate(DateTime date) {
  //   // 이벤트에 띄울 내용이 Todo 총 시간 일 때
  //   if (_isHoursView && _eventsTodoTime.containsKey(date)) {
  //     return [_eventsTodoTime[date]!];
  //     // 이벤트에 띄울 내용이 Todo 총 개수 일 때
  //   } else if (!_isHoursView && _eventsTodoCount.containsKey(date)) {
  //     return [_eventsTodoCount[date]!];
  //   }
  //   // 이벤트가 아무 것도 없을 때
  //   return [];
  // }

  // 해당 날짜에 투두 존재 여부 확인
  bool _hasTodoEvent(DateTime date) {
    return context.read<CalendarBloc>().hasEventByDay(date);
  }

  // 특정 날짜의 투두 개수 반환
  int _getEventDayTodoCount(DateTime date) {
    return context.read<CalendarBloc>().getTodoCountByDay(date);
  }

  // 특정 날짜의 투두 달성률 반환
  double _getEventDayAchievement(DateTime date) {
    return context.read<CalendarBloc>().getTodoAchievementByDay(date);
  }

  // 특정 날짜의 카테고리 정보 반환
  List<CategoryCalendarData> _getCategoryCalendarData(DateTime date) {
    return context.read<CalendarBloc>().getTodoCategoriesByDay(date);
  }

  // 뷰 전환
  void _onToggleView(bool isClicked) {
    setState(() {
      _isHoursView = isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoBloc, TodoState>(
      listener: (context, todoState) {
        if(todoState.status == TodoStatus.loaded) {
          _fetchCalendarByTodoData(todoState.todos);
        }
      },
      child: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, calendarState) {
          if(calendarState.status == CalendarStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }
          if(calendarState.status == CalendarStatus.loaded) {
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
              calendarFormat: calendarState.format,
              calendarStyle: _calendarStyle(),
              headerStyle: _headerStyle(),
              onDaySelected: _onDaySelected,
              // 일월화수목금토 텍스트
              daysOfWeekVisible: false,
              selectedDayPredicate: _selectedDayPredicate,
            );
          }
          return Container();
        }
      ),
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
                            // 이전 달 캘린더 전환
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
      /// 해당 날짜에 이벤트가 있다면 어떻게 표시할지
      markerBuilder: (context, date, events) {
      //   // 선택한 날짜의 이벤트에 따라 텍스트 표시
      //   // String eventText = _isHoursView
      //   //     ? _eventsTodoTime[date] ?? ''
      //   //     : _eventsTodoCount[date] ?? '';


        if(_hasTodoEvent(date)) {

          return Positioned(
              bottom: 10,
              child: CustomPaint(
                // 도넛 그래프의 크기 (width, height)
                size: Size(_rowHeight / 2, _rowHeight / 2),
                painter: TodoAchievementGraphPainter(
                    totalPercent: _getEventDayAchievement(date),
                    categories: _getCategoryCalendarData(date),
                    /// 3. _isHourView 값이 false 일 때 text 가 투두 카운트, true 일 때 TotalTm text 로 분기 필요.
                    text: _getEventDayTodoCount(date).toString()
                ),
              ));
        } else {
          return SizedBox.shrink();
        }
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
        context.read<CalendarBloc>().add(ToggleCalendarFormat());
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