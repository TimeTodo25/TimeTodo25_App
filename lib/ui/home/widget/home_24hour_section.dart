import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';
import '../../../entity/timer/timer_tbl.dart';

class Home24hourSection extends StatefulWidget {
  final List<TimerModel> currentTimerModels;

  const Home24hourSection({super.key, required this.currentTimerModels});

  @override
  State<Home24hourSection> createState() => _Home24hourSectionState();
}

class _Home24hourSectionState extends State<Home24hourSection> {
  static const int hoursInDay = 24;
  static const int minuteInterval = 10; // 10분 간격

  // 1~24시간 리스트 생성
  final List<int> hourList = List.generate(hoursInDay, (index) => index + 1);

  // 각 시간별 그래프 데이터를 저장할 리스트 (24시간 * 6개 = 144개)
  List<List<double>> hourlyPercentList = [];

  @override
  void initState() {
    super.initState();
    _calculateGraphData(); // 그래프 데이터 계산
  }

  // 두 시간 사이의 비율(0.0 ~ 1.0)을 계산하는 함수
  double calculatePercentValue(DateTime start, DateTime end) {
    int maxDuration = 600; // 10분(600초)을 기준으로 퍼센트 계산
    int durationInSeconds = end.difference(start).inSeconds;
    return durationInSeconds / maxDuration;
  }

  // 24시간 동안 각 10분 간격으로 percent 리스트 생성
  List<List<double>> calculateHourlyPercentList(List<TimerModel> timerModels) {
    int maxMinuteIndex = 6; // 60분을 10분 단위로 나누면 6개
    double minPercent = 0.0;
    double maxPercent = 1.0;

    // 24시간 * 6개의 빈 리스트 초기화
    List<List<double>> percentList = List.generate(hoursInDay, (_) => List.filled(maxMinuteIndex, minPercent));

    for (var model in timerModels) {
      DateTime startDt = DateTime.parse(model.historyStartDt);
      DateTime endDt = DateTime.parse(model.historyEndDt);

      while (startDt.isBefore(endDt)) {
        int hourIndex = startDt.hour == 0 ? 23 : startDt.hour - 1; // 00시는 24시(23번 인덱스)로 보정
        int minuteIndex = startDt.minute ~/ minuteInterval; // 10분 단위 인덱스 계산

        // 현재 10분 간격의 끝 시간 계산
        DateTime segmentEnd = DateTime(
          startDt.year,
          startDt.month,
          startDt.day,
          startDt.hour,
          (minuteIndex + 1) * minuteInterval,
        );

        if (segmentEnd.isAfter(endDt)) {
          segmentEnd = endDt; // 마지막 시간이 초과하면 보정
        }

        // 해당 구간의 퍼센트 값 계산
        double percent = calculatePercentValue(startDt, segmentEnd);
        percentList[hourIndex][minuteIndex] = (percentList[hourIndex][minuteIndex] + percent).clamp(minPercent, maxPercent);

        // 다음 10분 구간으로 이동
        startDt = segmentEnd;
      }
    }

    return percentList;
  }

  // 전체 그래프 데이터 계산
  void _calculateGraphData() {
    hourlyPercentList = calculateHourlyPercentList(widget.currentTimerModels);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 왼쪽 Column: 1~12시
        Expanded(child: _buildHourColumn(0, 12)),
        const SizedBox(width: 10), // 열 사이 간격 추가
        // 오른쪽 Column: 13~24시
        Expanded(child: _buildHourColumn(12, 24)),
      ],
    );
  }

  // 시간별 Column을 생성하는 함수 (start부터 end까지)
  Widget _buildHourColumn(int start, int end) {
    return Column(
      children: List.generate(end - start, (index) {
        int hour = hourList[start + index];
        return _buildHourGraph(hour, hourlyPercentList[start + index]);
      }),
    );
  }

  // 개별 시간에 대한 그래프와 텍스트를 포함하는 Row 위젯 생성
  Widget _buildHourGraph(int hour, List<double> percentList) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(width: 30, child: Text('$hour시', style: TextStyle(fontSize: 14))), // 시간 표시
          const SizedBox(width: 4),
          Expanded(child: HomeTimeGraph(percentList: percentList)), // 그래프 표시
        ],
      ),
    );
  }
}