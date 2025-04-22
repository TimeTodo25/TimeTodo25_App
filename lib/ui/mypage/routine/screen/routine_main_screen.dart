import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/assets/colors/color.dart';
import 'package:time_todo/bloc/routine/routine_bloc.dart';
import 'package:time_todo/bloc/routine/routine_event.dart';
import 'package:time_todo/bloc/routine/routine_state.dart';
import 'package:time_todo/entity/routine/routine_tbl.dart';
import 'package:time_todo/ui/mypage/routine/widget/routine_list.dart';

import '../../../components/widget/main_app_bar.dart';
import '../../../components/widget/responsive_center.dart';

class RoutineMainScreen extends StatefulWidget {
  const RoutineMainScreen({super.key});

  @override
  State<RoutineMainScreen> createState() => _RoutineMainScreenState();
}

@RoutePage(name: "RoutineMainRoute")
class _RoutineMainScreenState extends State<RoutineMainScreen> {
  // 화면 크기
  late double deviceWidth;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 화면 사이즈 측정
    deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveCenter(
          child: Column(
        children: [
          MainAppBar(
            title: "루틴",
            backOnTap: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: BlocBuilder<RoutineBloc, RoutineState>(
                builder: (context, state) {
              if (state.status == RoutineStatus.initial) {
                context
                    .read<RoutineBloc>()
                    .add(RoutineEvent.getCategoryListEvent());
                context
                    .read<RoutineBloc>()
                    .add(RoutineEvent.getRoutineListEvent());
              } else {
                print("state.categories: ${state.categories}");
                print("state.routines???????????: ${state.routines}");
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: state.categories.length, // 카테고리 개수만큼
                  itemBuilder: (context, index) {
                    final category = state.categories[index];
                    final categoryRoutines = state.routines
                        .where((routine) => routine.categoryIdx == category.idx)
                        .toList();

                    return RoutineList(
                      tagIdx: category.idx ?? 0,
                      tagName: category.title,
                      tagColor: category.categoryColor, // 또는 category.color
                      tagItemCount: categoryRoutines.length,
                      maxWidth: deviceWidth,
                      routines: categoryRoutines,
                    );
                  },
                ),
              );
            }),
          ),
        ],
      )),
    );
  }
}
