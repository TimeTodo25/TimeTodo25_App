import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/calendar/calendar_bloc.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';
import 'package:time_todo/bloc/today_goal/today_goal_bloc.dart';
import 'package:time_todo/bloc/today_goal/today_goal_event.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/bloc/todo_list/todo_list_state.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';
import 'package:time_todo/ui/home/widget/content_change_button.dart';
import 'package:time_todo/ui/home/widget/todo_achievement_graph_painter.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {

  // 캘린더 날짜 설정
  final kFirstDay = DateTime(2000, 1, 1);
  final kLastDay = DateTime(2200, 1, 1);

  // 캘린더 셀 높이 지정
  final double _rowHeight = 70;

  @override
  void initState() {
    super.initState();
    _initCalendarBloc();
    _initCalendarData();
  }

  void _initCalendarBloc() {
    context.read<CalendarBloc>().add(InitCalendar());
  }

  void _initCalendarData() {
    final selectedDay = context.read<CalendarBloc>().state.selectedDay ?? DateTime.now();
    context.read<TodoListBloc>().add(GetTodosByMonth(selectedDay));
  }

  // 투두 데이터 가져온 뒤 캘린더 데이터로 변환
  void _fetchCalendarData() {
    final selectedDay = context.read<CalendarBloc>().state.selectedDay ?? DateTime.now();
    final todos = context.read<TodoListBloc>().state.todos;

    context.read<CalendarBloc>().add(ConvertCalendarData(todos));
    context.read<CalendarBloc>().add(GetTotalTmByDate(todos, selectedDay));
  }

  // 캘린더 날짜 선택 -> 오늘의 목표 날짜 업데이트
  void _updateTodayGoalDate(DateTime date) {
    context.read<TodayGoalBloc>().add(UpdateGoalDate(goalDate: date));
  }

  /// 캘린더 UI 관련 메서드
  // 특정 날짜를 선택한 것으로 표시할지 여부를 결정하는 함수
  bool _selectedDayPredicate(DateTime day) {
    final selectedDay = context.read<CalendarBloc>().state.selectedDay ?? DateTime.now();
    return isSameDay(selectedDay, day);
  }

  void _onDaySelected(newSelectedDay, newFocusedDay) {
    DateTime selectedDay = context.read<CalendarBloc>().state.selectedDay ?? DateTime.now();

    if (!isSameDay(selectedDay, newSelectedDay)) {
        selectedDay = newSelectedDay;
        _updateSelectedDay(selectedDay);
        _updateTodayGoalDate(selectedDay);
    }
  }

  void _updateSelectedDay(DateTime date) {
    context.read<CalendarBloc>().add(UpdateSelectedDay(date: date));
  }

  // 해당 날짜에 투두 존재 여부 확인
  bool _hasTodoEvent(DateTime date) {
    return context.read<CalendarBloc>().hasEventByDay(date);
  }

  // 특정 날짜의 todoCount 반환 - UI 에 텍스트로 띄울 todoCount
  int _getEventDayTodoCount(DateTime date) {
    return context.read<CalendarBloc>().getTodoCountByDay(date);
  }

  // 특정 날짜의 timer totalTm 반환 - UI 에 텍스트로 띄울 totalTm
  int _getEventDayTotalTm(DateTime date) {
    return context.read<CalendarBloc>().getTodoTotalTmByDay(date);
  }

  // 특정 날짜의 투두 달성률 반환 - 원 그래프가 채워질 퍼센트 계산
  double _getEventDayAchievement(DateTime date) {
    return context.read<CalendarBloc>().getTodoAchievementByDay(date);
  }

  // 특정 날짜의 카테고리 정보 반환 - 채워진 그래프 중 카테고리 달성률로 색깔 분할
  List<CategoryCalendarData> _getCategoryCalendarData(DateTime date) {
    return context.read<CalendarBloc>().getTodoCategoriesByDay(date);
  }

  // 현재 캘린더에 표시할 내용 가져오기 - todoCount 또는 todoTotalTm
  CalendarViewContent _getCurrentViewContent() {
    return context.read<CalendarBloc>().state.viewContent;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // TodoList 상태 변화 감지
        BlocListener<TodoListBloc, TodoListState>(
          listener: (context, todoState) {
            if(todoState.status == TodoListStatus.updateProgress) {
              _fetchCalendarData();
            }
          },
        ),
      ],
      child: BlocBuilder<CalendarBloc, CalendarState>(
          builder: (context, state) {
            if(state.status == CalendarStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return TableCalendar(
                focusedDay: state.focusedDay ?? DateTime.now(),
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
                // 일월화수목금토 텍스트
                daysOfWeekVisible: false,
                selectedDayPredicate: _selectedDayPredicate,
              );
            }
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
                        const ContentChangeButton(),
                        // 달력 형식 전환 버튼
                        calChangeButton(),
                        // 오늘 날짜로 돌아가는 버튼
                        goTodayButton(),
                        // 끝 여백
                        const SizedBox(width: 8)
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
        if(_hasTodoEvent(date)) {
          // 선택한 View 에 따라 다른 텍스트 표시
          String eventText = _getCurrentViewContent() == CalendarViewContent.todoCount
              ? _getEventDayTodoCount(date).toString()
              : "${_getEventDayTotalTm(date).toString()}h";

          return Positioned(
              bottom: 10,
              child: CustomPaint(
                // 도넛 그래프의 크기 (width, height)
                size: Size(_rowHeight / 2, _rowHeight / 2),
                painter: TodoAchievementGraphPainter(
                    totalPercent: _getEventDayAchievement(date),
                    categories: _getCategoryCalendarData(date),
                    text: eventText
                ),
              ));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

// 오늘 날짜로 돌아가는 버튼
Widget goTodayButton() {
  return SizedBox(
    height: 25,
    width: 25,
    child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          context.read<CalendarBloc>().add(UpdateSelectedDay(date: DateTime.now()));
          context.read<TodayGoalBloc>().add(UpdateGoalDate(goalDate: DateTime.now()));
        },
        icon: const Icon(
            CupertinoIcons.arrow_2_circlepath, color: grey3, size: 24,
        )
    ),
  );
}

// 달력(month, 2weeks, week) 전환 버튼
  Widget calChangeButton() {
    return IconButton(
      onPressed: () {
        context.read<CalendarBloc>().add(ToggleCalendarFormat());
      },
      icon: const Icon(
          CupertinoIcons.calendar, color: grey3, size: 24),
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