import 'package:flutter/material.dart';
import 'package:time_todo/ui/home/widget/home_time_graph.dart';

class Home24hourSection extends StatefulWidget {
  const Home24hourSection({super.key});

  @override
  State<Home24hourSection> createState() => _Home24hourSectionState();
}

List<String> hourList = [
  '1', '13', '2', '14', '3', '15', '4', '16', '5', '17', '6', '18', '7', '19', '8', '20','9', '21', '10', '22', '11', '23', '12', '24'
];

class _Home24hourSectionState extends State<Home24hourSection> {
  @override
  Widget build(BuildContext context) {
    // homeTimeGraph 를 24개 그리기 (24시간)
    return GridView.custom(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 한 줄에 몇 개 표시할지
          mainAxisExtent: 30, // 높이
          mainAxisSpacing: 3, // 위아래 여백
          crossAxisSpacing: 8, // 세로 여백
        ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Flexible(
                flex: 1,
                child: Text('${hourList[index]}')),
            SizedBox(width: 4),
            Expanded(
              flex: 7,
                child: HomeTimeGraph())
          ]);
      },
        childCount: 24
      ),
    );
  }
}
