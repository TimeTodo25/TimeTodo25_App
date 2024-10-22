import 'package:flutter/material.dart';

import '../../../../assets/colors/color.dart';
import '../screen/d_day_main_screen.dart';

class DDayList extends StatefulWidget {
  final List<DDayList1>? list; // TODO 타입 나중에 변경해야됨
  final VoidCallback onTap;
  const DDayList({
    super.key,
    required this.onTap,
    required this.list
  });

  @override
  State<DDayList> createState() => _DDayListState();
}

class _DDayListState extends State<DDayList> {
  @override
  Widget build(BuildContext context) {

    // 리스트가 null일 경우 빈 리스트로 처리
    final items = widget.list ?? [];

    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 70),
      itemCount: items.length ,
      separatorBuilder: (BuildContext ctx, int idx) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(height: 1, color: grey1),
        );
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: widget.onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${items[index].title}",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "D-${items[index].remainingDays}",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 14
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
