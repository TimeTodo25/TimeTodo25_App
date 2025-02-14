import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_bloc.dart';
import 'package:time_todo/bloc/d_day/d_day_event.dart';
import 'package:time_todo/bloc/d_day/d_day_state.dart';
import 'package:time_todo/routes/app_routes.dart';
import 'package:time_todo/ui/components/widget/responsive_center.dart';
import 'package:time_todo/ui/mypage/d_day/screen/d_day_setting_screen.dart';

import '../../../components/widget/main_app_bar.dart';

@RoutePage(name: 'DDayMainRoute')
class DDayMainScreen extends StatefulWidget {
  const DDayMainScreen({super.key});

  @override
  State<DDayMainScreen> createState() => _DDayMainScreenState();
}

class _DDayMainScreenState extends State<DDayMainScreen> {
  @override
  Widget build(BuildContext context) {
    // 화면 너비 가져오기
    double screenWidth = MediaQuery.of(context).size.width;

    // 700 이하일 때는 동적으로 크기 설정, 이상일 때는 고정된 크기 사용
    double buttonWidth = screenWidth <= 700 ? screenWidth : 700;

    // D-day 포맷 함수
    String _formatDday(DateTime targetDate) {
      final int diffDays = targetDate.difference(DateTime.now()).inDays;
      // print('--------diffDays : $diffDays');
      if (diffDays > 0) {
        return 'D-$diffDays'; // 미래 날짜: D-3
      } else if (diffDays < 0) {
        return 'D+${-diffDays}'; // 지난 날짜: D+3
      } else {
        return 'D-Day'; // 당일: D-Day
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: ResponsiveCenter(
          child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          splashColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DDaySettingScreen()));
          },
          child: Icon(CupertinoIcons.settings),
        ),
      )),
      body: ResponsiveCenter(
        child: Column(
          children: [
            MainAppBar(
              title: "D-day",
              backOnTap: () {
                Navigator.pop(context);
              },
              actionText: "등록",
              actionOnTap: () {
                context.router.push(DDayAddRoute());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DDayAddScreen()));
              },
            ),
            // D-Day 목록 리스트
            Expanded(
              child: BlocBuilder<DdayBloc, DdayState>(
                builder: (context, state) {
                  if (state.status == DdayStatus.initial) {
                    context.read<DdayBloc>().add(DdayEvent.getDdayListEvent());
                  }
                  if (state.status == DdayStatus.loading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state.status == DdayStatus.loaded ||
                      state.status == DdayStatus.success) {
                    if (state.dDays.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: Center(
                          child: Text('등록된 D-day가 없습니다.'),
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: state.dDays.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          // dense: true, // 높이 줄이기
                          title: Text(state.dDays[index].content),
                          trailing: Text(
                            _formatDday(state.dDays[index].targetDt),
                          ),
                          onTap: () {
                            final dDayIdx = state.dDays[index].idx;
                            if (dDayIdx != null) {
                              context
                                  .read<DdayBloc>()
                                  .add(DdayEvent.getDdayDetailEvent(dDayIdx));
                              context.router.push(DDayModifyRoute());
                            } else {
                              print('dDayIdx is null 앗더??? : ${dDayIdx}');
                            }
                            // 나중에 서버 idx로 바꾸기
                            // context.read<DdayBloc>().add(
                            //     DdayEvent.getDdayDetailEvent(
                            //         state.dDays[index].idx!));
                            // context.router.push(DDayModifyRoute());
                          },
                        );
                      },
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Center(
                      child: Text('등록된 D-day가 없습니다.'),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// TODO 파일 어디로 해야되는지 몰라서 임시로 List 만듬
class DDayList1 {
  final String title;
  final int remainingDays;

  DDayList1({required this.title, required this.remainingDays});
}
