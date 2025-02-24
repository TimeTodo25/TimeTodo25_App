import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_todo/bloc/calendar/calendar_event.dart';
import 'package:time_todo/bloc/calendar/calendar_state.dart';
import 'package:time_todo/entity/calendar/category_calendar_data.dart';
import 'package:time_todo/repository/todo_repository.dart';
import 'package:time_todo/ui/todo/todo_extenstion.dart';
import 'package:time_todo/ui/utils/color_utils.dart';

import '../category_list/category_list_bloc.dart';

// class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
//   CalendarBloc() : super(const CalendarState(format: CalendarFormat.month, status: CalendarStatus.initial)) {
//     on<ToggleCalendarFormat>(_toggleFormat);
//     on<LoadCalendarData>(_onLoadCalendarData);
//     on<FetchCalendar>(_onFetchCalendar);
//   }
//


class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CategoryListBloc categoryListBloc;

  CalendarBloc({
    required this.categoryListBloc,
  }) : super(const CalendarState(format: CalendarFormat.month, status: CalendarStatus.initial)) {
    on<ToggleCalendarFormat>(_toggleFormat);
    on<LoadMonthCalendarData>(_onLoadMonthCalendarData);
    on<FetchCalendarData>(_onFetchCalendarData);
  }

  // 캘린더 형식 전환
  void _toggleFormat(ToggleCalendarFormat event, Emitter<CalendarState> emit) {
    switch (state.format) {
      case CalendarFormat.month:
        emit(state.copyWith(format: CalendarFormat.month));
        break;
      case CalendarFormat.twoWeeks:
        emit(state.copyWith(format: CalendarFormat.twoWeeks));
        break;
      case CalendarFormat.week:
        emit(state.copyWith(format: CalendarFormat.week));
        break;
    }
  }

  // 월별 투두 불러오기
  Future<void> _onLoadMonthCalendarData(LoadMonthCalendarData event, Emitter<CalendarState> emit) async {
    try {
      final todos = await TodoRepository.getValidProgressStatusTodosByMonth(event.date);
      add(FetchCalendarData(todos));
    } catch (e) {
      print('LoadCalendarData Error: $e');
    }
  }

  // 투두 데이터 -> Calendar 데이터로 가공
  void _onFetchCalendarData(FetchCalendarData event, Emitter<CalendarState> emit) {
    emit(state.copyWith(status: CalendarStatus.loading));

    // 투두 데이터를 날짜별로 그룹화
    final dailyEvents = event.todos.groupByDay();

    emit(state.copyWith(
      status: CalendarStatus.loaded,
      dailyEvents: dailyEvents,
    ));
  }

  // // 해당 날짜에 투두(Event) 존재 여부 확인
  // bool hasEventDay(DateTime day) {
  //   final targetDate = DateTime(day.year, day.month, day.day);
  //
  //   try {
  //     _currentEvents.firstWhere(
  //           (event) => DateTime(event.date.year, event.date.month, event.date.day)
  //           .isAtSameMomentAs(targetDate),
  //     );
  //     return true;
  //   } catch (e) {
  //     return false;  // 예외가 발생하면 이벤트가 없는 것으로 간주하고 false 반환
  //   }
  // }

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

  // CategoryCalendarData의 색상을 업데이트하는 메서드
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
}