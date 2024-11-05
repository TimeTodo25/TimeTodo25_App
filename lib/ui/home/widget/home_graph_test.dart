import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeGraphTest extends StatefulWidget {
  const HomeGraphTest({super.key});

  @override
  State<HomeGraphTest> createState() => _HomeGraphTestState();
}

class _HomeGraphTestState extends State<HomeGraphTest> {
  @override
  Widget build(BuildContext context) {

    /// percent Indicator 라이브러리 쓰면 0.1 ~ 1.0 까지 채우기 가능
    /// 0.1 ~ 0.5 = progressColor 로 색깔 차지됨
    /// 중간 부터 끝까지 채우려면 (ex 0.5 ~ 1.0) background 색을 변경하는 걸로...

    return Row(
     children: [
       Flexible(
         child: ClipRRect(
           // 왼쪽 모서리 둥글게
           borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
           child: LinearPercentIndicator(
             padding: EdgeInsets.only(right: 1),
             lineHeight: 30,
             backgroundColor: Colors.blue,
             progressColor: Colors.grey,
             percent: 0.5,
           ),
         ),
       ),
       Flexible(
         child: LinearPercentIndicator(
           padding: EdgeInsets.only(right: 1),
           lineHeight: 30,
           backgroundColor: Colors.grey,
           progressColor: Colors.blue,
           percent: 1,
         ),
       ),
       Flexible(
         child: LinearPercentIndicator(
           padding: EdgeInsets.only(right: 1),
           lineHeight: 30,
           backgroundColor: Colors.grey,
           progressColor: Colors.blue,
           percent: 1,
         ),
       ),
       Flexible(
         child: LinearPercentIndicator(
           padding: EdgeInsets.only(right: 1),
           lineHeight: 30,
           backgroundColor: Colors.grey,
           progressColor: Colors.blue,
           percent: 1,
         ),
       ),
       Flexible(
         child: LinearPercentIndicator(
           padding: EdgeInsets.only(right: 1),
           lineHeight: 30,
           backgroundColor: Colors.grey,
           progressColor: Colors.blue,
           percent: 1,
         ),
       ),
       Flexible(
       child: ClipRRect(
         // 오른쪽 모서리 둥글게
       borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
           child: LinearPercentIndicator(
             padding: EdgeInsets.zero,
             lineHeight: 30,
             backgroundColor: Colors.grey,
             progressColor: Colors.blue,
             percent: 1,
           ),
         ),
       ),
     ],
    );
  }
}
