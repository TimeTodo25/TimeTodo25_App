import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';

import '../../../bloc/timer_graph/timer_graph_bloc.dart';
import '../../../bloc/timer_graph/timer_graph_event.dart';
import '../../../bloc/timer_graph/timer_graph_state.dart';
import '../../../entity/timer/timer_tbl.dart';
import 'hourly_timer_data.dart';

class Home24hourSection extends StatefulWidget {
  const Home24hourSection({super.key});

  @override
  State<Home24hourSection> createState() => _Home24hourSectionState();
}

class _Home24hourSectionState extends State<Home24hourSection> {
  static const int hoursInDay = 24;
  List<HourlyTimerData> hourlyTimerDataList = [];

  @override
  void initState() {
    super.initState();
    _initTimerGraph();
    _fetchTimerGraph();
  }

  void _initTimerGraph() {
    context.read<TimerGraphBloc>().add(InitTimerGraph());
  }

  // 타이머 그래프 데이터를 불러오는 이벤트 전송
  void _fetchTimerGraph() {
    context.read<TimerGraphBloc>().add(FetchTimerGraph());
  }

  // Method to get colors from CategoryListBloc
  Color _getCategoryColorForTodo(int todoIndex) {
    final todoColorMap = context.read<CategoryListBloc>().state.todoColorMap;
    return todoColorMap[todoIndex] ?? Colors.grey;
  }

  // Request color from the bloc for a specific todo
  void _requestCategoryColor(int todoIndex) {
    // Only request if not already in the map
    final todoColorMap = context.read<CategoryListBloc>().state.todoColorMap;
    if (!todoColorMap.containsKey(todoIndex)) {
      context.read<CategoryListBloc>().add(GetCategoryColorByTodoIndex(todoIndex: todoIndex));
    }
  }

  // 두 시간 사이의 비율(0.0 ~ 1.0)을 계산하는 함수
  double _calculatePercentValue(DateTime start, DateTime end) {
    int maxDuration = 600; // 10분(600초) 기준
    int durationInSeconds = end.difference(start).inSeconds;
    return durationInSeconds / maxDuration;
  }

  // 타이머 데이터를 시간별 데이터로 변환
  void _initHourlyTimerDataList(List<TimerModel> timerModels,) {
    hourlyTimerDataList = _generateHourlyTimerData(timerModels);
  }


  /// TimerModel 리스트를 24시간 시간대별 데이터로 변환
  List<HourlyTimerData> _generateHourlyTimerData(List<TimerModel> timerModels) {
    List<HourlyTimerData> hourlyData = List.generate(hoursInDay, (hour) =>
        HourlyTimerData(hour: hour + 1, details: List.generate(6, (_) =>
            HourlyTimerDetail(percent: 0.0, color: Colors.transparent))));

    for (var model in timerModels) {
      DateTime startDt = DateTime.parse(model.historyStartDt);
      DateTime endDt = DateTime.parse(model.historyEndDt);

      // Request color from bloc
      _requestCategoryColor(model.todoIdx);

      // Get color from bloc state
      Color timerColor = _getCategoryColorForTodo(model.todoIdx);

      // 10분 단위로 쪼개기
      while (startDt.isBefore(endDt)) {
        int hourIndex = startDt.hour == 0 ? 23 : startDt.hour - 1;
        int minuteIndex = startDt.minute ~/ 10;

        DateTime segmentEnd = startDt.add(const Duration(minutes: 10));
        if (segmentEnd.isAfter(endDt)) segmentEnd = endDt;

        // 그래프 완성도
        double percent = _calculatePercentValue(startDt, segmentEnd);

        // 카테고리 컬러 반영
        hourlyData[hourIndex].details[minuteIndex] = HourlyTimerDetail(percent: percent, color: timerColor);

        startDt = segmentEnd;
      }
    }
    return hourlyData;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryListBloc, CategoryListState>(
      builder: (context, categoryState) {
        return BlocBuilder<TimerGraphBloc, TimerGraphState>(
          builder: (context, timerState) {
            if (timerState.status != TimerGraphStatus.success) {
              return const Center(child: CircularProgressIndicator());
            }

            // 그래프 데이터 초기화
            _initHourlyTimerDataList(timerState.timerModels);

            return _buildHourlyGraphView();
          },
        );
      },
    );
  }


  /// 24시간 그래프 UI를 구성하는 위젯
  Widget _buildHourlyGraphView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: hourlyTimerDataList.sublist(0, 12).map(_buildHourGraph).toList(),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            children: hourlyTimerDataList.sublist(12, 24).map(_buildHourGraph).toList(),
          ),
        ),
      ],
    );
  }

  /// 각 시간대별 그래프 생성
  Widget _buildHourGraph(HourlyTimerData hourlyData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
              width: 30,
              child: Text('${hourlyData.hour}시', style: TextStyle(fontSize: 14))),
          const SizedBox(width: 4),
          Expanded(child: HomeTimeGraph(hourlyData: hourlyData)),
        ],
      ),
    );
  }
}
