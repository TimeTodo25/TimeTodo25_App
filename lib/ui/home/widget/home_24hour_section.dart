import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/calendar/timer_graph_bloc.dart';
import 'package:time_todo/bloc/calendar/timer_graph_state.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/category/category_state.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';
import 'package:time_todo/ui/utils/color_utils.dart';
import '../../../bloc/calendar/timer_graph_event.dart';
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
    _fetchTimerGraph();
  }

  // 타이머 그래프 데이터를 불러오는 이벤트 전송
  void _fetchTimerGraph() {
    context.read<TimerGraphBloc>().add(FetchTimerGraph());
  }

  // 두 시간 사이의 비율(0.0 ~ 1.0)을 계산하는 함수
  double _calculatePercentValue(DateTime start, DateTime end) {
    int maxDuration = 600; // 10분(600초) 기준
    int durationInSeconds = end.difference(start).inSeconds;
    return durationInSeconds / maxDuration;
  }

  // 타이머 데이터를 시간별 데이터로 변환
  void _initHourlyTimerDataList(List<TimerModel> timerModels, Map<int, String> categoryColors) {
    hourlyTimerDataList = _generateHourlyTimerData(timerModels, categoryColors);
  }

  /// TimerModel 리스트를 24시간 시간대별 데이터로 변환
  List<HourlyTimerData> _generateHourlyTimerData(List<TimerModel> timerModels, Map<int, String> categoryColors) {
    List<HourlyTimerData> hourlyData = List.generate(hoursInDay, (hour) =>
        HourlyTimerData(hour: hour + 1, details: List.generate(6, (_) =>
            HourlyTimerDetail(percent: 0.0, color: Colors.transparent))));

    for (var model in timerModels) {
      DateTime startDt = DateTime.parse(model.historyStartDt);
      DateTime endDt = DateTime.parse(model.historyEndDt);
      Color timerColor = ColorUtil.getColorFromName(categoryColors[model.todoIdx] ?? '');

      // 10분 단위로 쪼개기
      while (startDt.isBefore(endDt)) {
        int hourIndex = startDt.hour == 0 ? 23 : startDt.hour - 1;
        int minuteIndex = startDt.minute ~/ 10;

        DateTime segmentEnd = startDt.add(Duration(minutes: 10));
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
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, categoryState) {
        // 카테고리 색상 정보를 Map<int, String> 형태로 변환
        Map<int, String> categoryColors = {
          for (var category in categoryState.categories)
            category.idx ?? 0: category.categoryColor
        };

        return BlocBuilder<TimerGraphBloc, TimerGraphState>(
          builder: (context, timerState) {
            if (timerState.status != TimerGraphStatus.success) {
              return const Center(child: CircularProgressIndicator());
            }

            // 그래프 데이터 초기화
            _initHourlyTimerDataList(timerState.timerModels, categoryColors);

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
