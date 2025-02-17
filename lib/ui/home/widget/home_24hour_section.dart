import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';
import '../../../bloc/category/category_event.dart';
import '../../../entity/timer/timer_tbl.dart';
import 'hourly_timer_data.dart';

class Home24hourSection extends StatefulWidget {
  final List<TimerModel> currentTimerModels;

  const Home24hourSection({super.key, required this.currentTimerModels});

  @override
  State<Home24hourSection> createState() => _Home24hourSectionState();
}

class _Home24hourSectionState extends State<Home24hourSection> {
  static const int hoursInDay = 24;

  // 1~24시간 리스트 생성
  final List<int> hourList = List.generate(hoursInDay, (index) => index + 1);

  // 각 시간별 그래프 데이터를 저장할 리스트
  List<HourlyTimerData> hourlyTimerDataList = [];

  @override
  void initState() {
    super.initState();
    initHourlyTimerDataList();
  }

  void initHourlyTimerDataList() {
    hourlyTimerDataList = generateHourlyTimerData(widget.currentTimerModels);
  }

  // 두 시간 사이의 비율(0.0 ~ 1.0)을 계산하는 함수
  double calculatePercentValue(DateTime start, DateTime end) {
    int maxDuration = 600; // 10분(600초)을 기준으로 퍼센트 계산
    int durationInSeconds = end.difference(start).inSeconds;
    return durationInSeconds / maxDuration;
  }

  // TimerModel -> HourTimerData 로 변환
  List<HourlyTimerData> generateHourlyTimerData(List<TimerModel> timerModels) {
    List<HourlyTimerData> hourlyData = List.generate(24,
            (hour) => HourlyTimerData(
            hour: hour + 1,
            segments: List.generate(6, (_) => HourlyTimerDetail(percent: 0.0, color: Colors.transparent))
        )
    );

    for (var model in timerModels) {
      DateTime startDt = DateTime.parse(model.historyStartDt);
      DateTime endDt = DateTime.parse(model.historyEndDt);
      Color timerColor = _getTimerColorByTodoIndex(model.todoIdx);

      while (startDt.isBefore(endDt)) {
        int hourIndex = startDt.hour == 0 ? 23 : startDt.hour - 1;
        int minuteIndex = startDt.minute ~/ 10;

        DateTime segmentEnd = startDt.add(Duration(minutes: 10));
        if (segmentEnd.isAfter(endDt)) segmentEnd = endDt;

        double percent = calculatePercentValue(startDt, segmentEnd);
        hourlyData[hourIndex].segments[minuteIndex] = HourlyTimerDetail(percent: percent, color: timerColor);

        startDt = segmentEnd;
      }
    }
    return hourlyData;
  }

  // 카테고리 컬러 가져와서 그래프에 적용
  Color _getTimerColorByTodoIndex(int todoIdx) {
    context.read<CategoryBloc>().add(GetCategoryColorAndTitleByIndex(index: todoIdx));
    return context.read<CategoryBloc>().state.color;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1~12시간을 나타내는 부분
        Expanded(
          child: Column(
            children: hourlyTimerDataList.sublist(0, 12).map((hourlyData) {
              return _buildHourGraph(hourlyData);
            }).toList(),
          ),
        ),
        const SizedBox(width: 10),
        // 13~24시간을 나타내는 부분
        Expanded(
          child: Column(
            children: hourlyTimerDataList.sublist(12, 24).map((hourlyData) {
              return _buildHourGraph(hourlyData);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

// 각 시간대별 그래프 생성
Widget _buildHourGraph(HourlyTimerData hourlyData) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      children: [
        SizedBox(width: 30, child: Text('${hourlyData.hour}시', style: TextStyle(fontSize: 14))),
        const SizedBox(width: 4),
        // 그래프 표시
        Expanded(
            child: HomeTimeGraph(hourlyData: hourlyData)
        ),
      ],
    ),
  );
}