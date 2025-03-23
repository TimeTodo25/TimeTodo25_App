import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';
import 'package:time_todo/entity/calendar/day_calendar_data.dart';
import 'package:time_todo/entity/todo/todo_extenstion.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/repository/timer_repository.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';

import '../category_list/category_list_bloc.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final timerRepo = TimerRepository();
  final CategoryListBloc categoryListBloc;

  CalendarBloc({
    required this.categoryListBloc,
  }) : super(const CalendarState(format: CalendarFormat.month, status: CalendarStatus.initial, selectedDay: null, focusedDay: null)) {
    on<InitCalendar>(_initCalendar);
    on<UpdateSelectedDay>(_updateSelectedDay);
    on<ToggleCalendarFormat>(_toggleFormat);
    on<ChangeViewContent>(_onChangeViewContent);
    on<ConvertCalendarData>(_onConvertCalendarData);
    on<GetTotalTmByDate>(_getTotalTmByDate);
  }

  void _initCalendar(InitCalendar event, Emitter<CalendarState> emit) {
    emit(state.copyWith(
      selectedDay: DateTime.now(),
      focusedDay: DateTime.now(),
      format: CalendarFormat.month,
      viewContent: CalendarViewContent.todoCount,
      dailyEvents: [],
      categories: [],
      status: CalendarStatus.initial,
    ));
  }

  void _updateSelectedDay(UpdateSelectedDay event, Emitter<CalendarState> emit) {
    emit(state.copyWith(selectedDay: event.date, focusedDay: event.date));
  }

  // 캘린더 형식 전환
  void _toggleFormat(ToggleCalendarFormat event, Emitter<CalendarState> emit) {
    CalendarFormat nextFormat;

    switch (state.format) {
      case CalendarFormat.month:
        nextFormat = CalendarFormat.twoWeeks;
        break;
      case CalendarFormat.twoWeeks:
        nextFormat = CalendarFormat.week;
        break;
      case CalendarFormat.week:
        nextFormat = CalendarFormat.month;
        break;
    }

    emit(state.copyWith(format: nextFormat));
  }

  // 캘린더 셀 안에 나타낼 내용 전환
  void _onChangeViewContent(ChangeViewContent event, Emitter<CalendarState> emit) {
    final newViewContent = state.viewContent == CalendarViewContent.todoCount
        ? CalendarViewContent.todoTotalTime
        : CalendarViewContent.todoCount;

    emit(state.copyWith(viewContent: newViewContent));
  }

  /// 캘린더를 띄우기 위한 기본 메서드 (기본 view = TodoTotalCount)
  // 투두 데이터 -> Calendar 데이터로 가공
  void _onConvertCalendarData(ConvertCalendarData event, Emitter<CalendarState> emit) async {
    emit(state.copyWith(status: CalendarStatus.loading));

    // 투두 데이터를 날짜별로 그룹화
    final dailyEvents = event.todos.groupByDay();

    emit(state.copyWith(
      status: CalendarStatus.loaded,
      dailyEvents: dailyEvents,
    ));
    print("💙 캘린더 블록에서 투두 데이터 -> 캘린더 데이터로 가공 완료");
  }

  /// UI에 띄우기 위한 값 계산 메서드
  // 특정 날짜에 투두가 있는지 확인
  bool hasEventByDay(DateTime date) {
    final targetDate = DateTime(date.year, date.month, date.day);
    return state.dailyEvents.any(
          (event) => DateTime(event.date.year, event.date.month, event.date.day)
          .isAtSameMomentAs(targetDate),
    );
  }

  // 특정 날짜의 Todo 완성 개수 반환
  int getTodoCountByDay(DateTime date) {
    final targetDate = DateTime(date.year, date.month, date.day);
    try {
      final validEvent = state.dailyEvents.firstWhere((event) => event.date.isAtSameMomentAs(targetDate));
      return validEvent.todoCount;
    } catch (e) {
      return 0;
    }
  }

  // 특정 날짜의 Todo 달성률 반환
  double getTodoAchievementByDay(DateTime date) {
    final targetDate = DateTime(date.year, date.month, date.day);

    try {
      final validEvent = state.dailyEvents.firstWhere((event) => event.date.isAtSameMomentAs(targetDate));
      return validEvent.dailyAchievementRate;
    } catch (e) {
      return 0;
    }
  }

  // 특정 날짜의 totalTm 반환
  int getTodoTotalTmByDay(DateTime date) {
    final targetDate = DateTime(date.year, date.month, date.day);

    try {
      final validEvent = state.dailyEvents.firstWhere((event) => event.date.isAtSameMomentAs(targetDate));
      int hour = (validEvent.todoTime / 3600).floor();
      return hour;
    } catch (e) {
      return 0;
    }
  }


  /// CategoryCalendarData의 색상을 업데이트하는 메서드
  List<CategoryCalendarData> _updateCategoryColors(List<CategoryCalendarData> categories) {
    final categoryState = categoryListBloc.state;

    // categoryListBloc의 상태에서 idx 일치하는 카테고리 찾기
    return categories.map((category) {
      try {
        final matchingCategory = categoryState.categories.firstWhere(
              (state) => state.idx == category.categoryId,
        );

        return category.copyWith(categoryColor: ColorUtil.getColorFromName(matchingCategory.categoryColor));
      } catch (e) {
        return category;
      }
    }).toList();
  }

  // 특정 날짜의 카테고리 리스트 반환
  List<CategoryCalendarData> getTodoCategoriesByDay(DateTime date) {
    final targetDate = DateTime(date.year, date.month, date.day);

    try {
      final validEvent = state.dailyEvents.firstWhere(
              (event) => event.date.isAtSameMomentAs(targetDate)
      );
      // 카테고리 데이터를 가져온 후 색상 업데이트
      return _updateCategoryColors(validEvent.categories);
    } catch (e) {
      return [];
    }
  }

  /// TodoTotalTm 을 띄우기 위한 fetch 메서드
  Future<void> _getTotalTmByDate(GetTotalTmByDate event, Emitter<CalendarState> emit) async {
    emit(state.copyWith(status: CalendarStatus.loading));
    // 1. todoIdx 리스트 추출
    List<int> todoIds = event.todos.getTodoIdxList();

    // 2. 기준일
    final targetDate = event.date;

    // 3. todoIdx, targetDate 를 기준으로 날짜별 totalTm 가져오기
    Map<String, int> totalTmByDate = await timerRepo.getMonthlyTotalTmByDate(todoIds, targetDate);

    // 4. DayCalendarData 리스트로 변환
    List<DayCalendarData> dayCalendarDataList = await _convertToDayCalendarData(event.todos, targetDate, totalTmByDate);

    emit(state.copyWith(
        status: CalendarStatus.loaded,
        dailyEvents: dayCalendarDataList
    ));
  }

  Future<List<DayCalendarData>> _convertToDayCalendarData(List<Todo> todos, DateTime targetDate, Map<String, int> totalTmByDate) async {
    List<DayCalendarData> dayCalendarDataList = [];

    // 날짜별로 투두를 그룹화
    var groupedTodos = todos.groupTodosByDay();

    groupedTodos.forEach((date, dayTodos) {
      // yyyy-MM-dd 형식으로 포맷
      String dateString = DateTimeUtils.formatDate(date);

      // 해당 날짜의 totalTm 값을 가져옴
      int totalTm = totalTmByDate[dateString] ?? 0;

      // DayCalendarData 생성
      DayCalendarData dayData = DayCalendarData(
          date: date,
          categories: dayTodos.groupByCategory(),
          dailyAchievementRate: dayTodos.calculateDailyAchievementRate(dayTodos),
          todoCount: dayTodos.calculateTotalTodoCount(dayTodos),
          todoTime: totalTm
      );

      dayCalendarDataList.add(dayData);
    });

    return dayCalendarDataList;
  }
}