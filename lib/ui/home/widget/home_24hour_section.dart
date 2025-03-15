import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_bloc.dart';
import 'package:time_todo/bloc/category_list/category_list_event.dart';
import 'package:time_todo/bloc/category_list/category_list_state.dart';
import 'package:time_todo/bloc/timer/timer_graph/timer_graph_bloc.dart';
import 'package:time_todo/bloc/timer/timer_graph/timer_graph_event.dart';
import 'package:time_todo/bloc/timer/timer_graph/timer_graph_state.dart';
import 'package:time_todo/entity/timer/timer_tbl.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';
import 'hourly_timer_data.dart';

class Home24HourSection extends StatefulWidget {
  const Home24HourSection({super.key});

  @override
  State<Home24HourSection> createState() => _Home24HourSectionState();
}

class _Home24HourSectionState extends State<Home24HourSection> {
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

  void _fetchTimerGraph() {
    context.read<TimerGraphBloc>().add(FetchTimerGraph());
  }

  // Method to get colors from CategoryListBloc
  Color _getCategoryColorForTodo(int todoIndex) {
    final todoColorMap = context.read<CategoryListBloc>().state.todoColorMap;
    return todoColorMap[todoIndex] ?? Colors.grey;
  }

  void _requestCategoryColor(int todoIndex) {
    // Only request if not already in the map
    final todoColorMap = context.read<CategoryListBloc>().state.todoColorMap;
    if (!todoColorMap.containsKey(todoIndex)) {
      context
          .read<CategoryListBloc>()
          .add(GetCategoryColorByTodoIndex(todoIndex: todoIndex));
    }
  }

  // TimerModel 데이터를 직접 시간 범위로 변환
  List<HourlyTimerData> _convertToHourlyTimerData(
      List<TimerModel> timerModels) {
    // 24시간에 대한 빈 데이터 생성
    List<HourlyTimerData> hourlyData = List.generate(
      hoursInDay,
          (hour) => HourlyTimerData(hour: hour + 1, timerRanges: []),
    );

    for (var model in timerModels) {
      DateTime startDt = DateTime.parse(model.historyStartDt);
      DateTime endDt = DateTime.parse(model.historyEndDt);

      // 색상 가져오기
      _requestCategoryColor(model.todoIdx);
      Color timerColor = _getCategoryColorForTodo(model.todoIdx);

      // 시간 범위 객체 생성
      TimerRange timerRange = TimerRange(
        startTime: startDt,
        endTime: endDt,
        color: timerColor,
      );

      // 해당하는 모든 시간대에 범위 추가
      for (int hour = startDt.hour; hour <= endDt.hour; hour++) {
        int hourIndex = hour == 0 ? 23 : hour - 1;
        hourlyData[hourIndex].timerRanges.add(timerRange);
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

            // 그래프 데이터 변환
            hourlyTimerDataList =
                _convertToHourlyTimerData(timerState.timerModels);

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
            child: Text('${hourlyData.hour}시',
                style: const TextStyle(fontSize: 14)),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: HomeTimeGraph(
              hourlyData: hourlyData,
            ),
          ),
        ],
      ),
    );
  }
}