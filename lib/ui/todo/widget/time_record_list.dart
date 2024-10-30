import 'package:flutter/material.dart';

class TimeRecordList extends StatefulWidget {
  final List<List<String>> timeRecord; // 시작시간, 멈춘시간, 총시간 정보가 들어있는 리스트
  const TimeRecordList({super.key, required this.timeRecord});

  @override
  State<TimeRecordList> createState() => _TimeRecordListState();
}

class _TimeRecordListState extends State<TimeRecordList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.timeRecord.length,
        itemBuilder: (context, index) {
          final record = widget.timeRecord[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('${record[0]} ${record[1]}', maxLines: 1),
                    )),
                Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('${record[2]} ${record[3]}', maxLines: 1),
                    )),
                Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(record[4], maxLines: 1, style: Theme.of(context).textTheme.labelLarge),
                    )),
              ],
            ),
          );
        });
  }
}
