import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/ui/components/buttons/main_delete_button.dart';
import 'package:time_todo/ui/components/widget/main_alert.dart';
import 'package:time_todo/ui/components/widget/time_picker.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';
import '../../../bloc/category/category_event.dart';
import '../../../bloc/category/category_state.dart';
import '../../../bloc/todo/todo_event.dart';
import '../../../entity/todo/todo_tbl.dart';
import '../../components/widget/date_picker.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';
import '../widget/todo_date_picker_button.dart';
import '../widget/todo_done_time_picker_button.dart';
import '../widget/todo_start_time_picker_button.dart';
import '../widget/todo_text_field.dart';

class TodoModifyScreen extends StatefulWidget {
  final Todo todo;

  const TodoModifyScreen({super.key, required this.todo});

  @override
  State<TodoModifyScreen> createState() => _TodoModifyScreenState();
}

class _TodoModifyScreenState extends State<TodoModifyScreen> {
  final TextEditingController _controller = TextEditingController();
  final Debouncer _debouncer = Debouncer(milliseconds: 300);

  DateTime? startTargetDt;
  DateTime? endTargetDt;
  DateTime todoDate = DateTime.now();

  void clear() {
    context.read<TodoBloc>().add(InitTodo());
    context.read<CategoryBloc>().add(InitCategory());
  }

  void initTodoContent() {
    final String title = widget.todo.content;
    if (_controller.text != title) {
      _controller.text = title;
    }
  }

  void initTodoDate() {
    todoDate = widget.todo.todoDate;
  }

  void initTodoStartTargetDt() {
    startTargetDt = widget.todo.startTargetDt;
  }

  void initTodoEndTargetDt() {
    endTargetDt = widget.todo.endTargetDt;
  }

  void initTodoCategory() {
    context.read<CategoryBloc>().add(GetCategoryColorAndTitleByIndex(index: widget.todo.categoryIdx));
  }

  void onUpdateTodoDate() {
    context.read<TodoBloc>().add(UpdateTodoDate(todoDate));
  }

  void onUpdateStartTime() {
    context.read<TodoBloc>().add(UpdateStartTargetDt(startTargetDt));
  }

  void onUpdateEndTime() {
    context.read<TodoBloc>().add(UpdateEndTargetDt(endTargetDt));
  }

  void selectTodoDate(DateTime time) {
    _debouncer(() {
      todoDate = time;
    });
  }

  void selectStartTime(DateTime time) {
    _debouncer(() {
      startTargetDt = time;
    });
  }

  void selectEndTime(DateTime time) {
    _debouncer(() {
      endTargetDt = time;
    });
  }

  void initStartTargetDt() {
    startTargetDt = null;
  }

  void initEndTargetDt() {
    endTargetDt = null;
  }

  void onModifyTodo() {
    final Todo newTodo = Todo(
        idx: widget.todo.idx,
        categoryIdx: widget.todo.categoryIdx,
        userName: 'test',
        content: _controller.text,
        startTargetDt: startTargetDt,
        endTargetDt: endTargetDt,
        todoDate: todoDate);

    context.read<TodoBloc>().add(ModifyTodo(newTodo));

    _controller.clear();
  }

  void onDeleteTodo() {
    context.read<TodoBloc>().add(DeleteTodo(widget.todo.idx ?? 0));
  }

  void showCustomAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return
              // 삭제 상태로 변경
              MainAlert(
                msg: '정말 삭제 하시겠습니까?',
            onPositivePressed: () {
              onDeleteTodo();
              Navigator.pop(context);
              Navigator.pop(context);
            },
            onNegativePressed: () {
              Navigator.pop(context);
            },
          );
        });
  }

  @override
  void initState() {
    super.initState();
    initTodoContent();
    initTodoDate();
    initTodoCategory();
    initTodoStartTargetDt();
    initTodoEndTargetDt();
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 빈 화면 터치 시 키보드 내리기 위한 코드
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<TodoBloc, TodoState>(builder: (context, todoState) {
            return ResponsiveCenter(
                child: Column(
              children: [
                MainAppBar(
                  title: "TODO 수정",
                  backOnTap: () {
                    clear();
                    Navigator.pop(context);
                  },
                  actionText: "완료",
                  actionOnTap: () {
                    onModifyTodo();
                    clear();
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                    return TodoTextField(
                        categoryName: state.title,
                        categoryColor: state.color,
                        controller: _controller);
                  }),
                ),
                SizedBox(height: 10),
                // todo 날짜 설정
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoDatePickerButton(
                    buttonText: DateTimeUtils.formatDate(todoDate),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return DatePicker(
                              title: '날짜',
                              initialDate: todoDate,
                              onDateChanged: (DateTime value) {
                                selectTodoDate(value);
                              },
                              onPressed: () {
                                onUpdateTodoDate();
                                Navigator.pop(context);
                              },
                            );
                          });
                    },
                  ),
                ),
                // todo 시작 시간
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoStartTimePickerButton(
                    // 기존에 설정한 시작 시간 보여주기
                    buttonText: DateTimeUtils.formatTime(startTargetDt),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return TimePicker(
                                onDateTimeChanged: (DateTime value) {
                              selectStartTime(value);
                            },
                                // 선택한 시간으로 업데이트
                                onPressed: () {
                              onUpdateStartTime();
                              Navigator.pop(context, true);
                            });
                          }).then((value) {
                            if(value == null) {
                          // 백버튼 누르지 않고 외부 터치로 닫은 경우 선택한 값 초기화
                          initStartTargetDt();
                        }
                      });

                    },
                  ),
                ),
                // todo 종료 시간
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TodoDoneTimePickerButton(
                    // 기존에 설정한 종료 시간 보여주기
                    buttonText: DateTimeUtils.formatTime(endTargetDt),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return TimePicker(
                                onDateTimeChanged: (DateTime value) {
                                  selectEndTime(value);
                                },
                                // 선택한 시간으로 업데이트
                                onPressed: () {
                                  onUpdateEndTime();
                                  Navigator.pop(context, true);
                                });
                          }).then((value) {
                        if(value == null) {
                          // 백버튼 누르지 않고 외부 터치로 닫은 경우 선택한 값 초기화
                          initEndTargetDt();
                        }
                      });
                    },
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: MainDeleteButton(
                    onTap: () {
                      showCustomAlert(context);
                    },
                  ),
                )
              ],
            ));
          })),
    );
  }
}
