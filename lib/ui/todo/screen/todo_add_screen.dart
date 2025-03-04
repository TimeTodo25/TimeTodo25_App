import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/bloc/category_detail/category_detail_bloc.dart';
import 'package:time_todo/bloc/category_detail/category_detail_event.dart';
import 'package:time_todo/bloc/category_detail/category_detail_state.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/components/widget/time_picker.dart';
import 'package:time_todo/ui/components/widget/toast_message.dart';
import 'package:time_todo/ui/todo/widget/todo_done_time_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_start_time_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_date_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_text_field.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';
import '../../../entity/todo/todo_tbl.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';

class TodoAddScreen extends StatefulWidget {
  final int categoryIdx;
  final String categoryName;
  final Color categoryColor;

  const TodoAddScreen({
    super.key,
    required this.categoryIdx,
    required this.categoryColor,
    required this.categoryName,
  });

  @override
  State<TodoAddScreen> createState() => _TodoAddScreenState();
}

class _TodoAddScreenState extends State<TodoAddScreen> {
  final TextEditingController _controller = TextEditingController();
  final Debouncer _debouncer = Debouncer(milliseconds: 300);

  DateTime? startTargetDt;
  DateTime? endTargetDt;
  DateTime todoDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    initCategoryDetail();
    initTodoInfo();
  }

  void initCategoryDetail() {
    context.read<CategoryDetailBloc>().add(GetCategoryInfo(
        color: widget.categoryColor, title: widget.categoryName));
  }

  void initTodoInfo() {
    context.read<TodoDetailBloc>().add(GetCategoryIdx(widget.categoryIdx));
  }

  void onAddTodo() {
    int categoryIdx = widget.categoryIdx;
    final Todo newTodo = Todo(
        categoryIdx: categoryIdx,
        userName: 'test',
        createDt: DateTime.now(),
        content: _controller.text,
        startTargetDt: startTargetDt,
        endTargetDt: endTargetDt,
        todoDate: todoDate);

    context.read<TodoDetailBloc>().add(AddTodo(newTodo));
    context.read<TodoListBloc>().add(GetTodosByCategory(widget.categoryIdx));

    // db 경로 찍어보기...
    logDatabasePath();
  }

  void onUpdateTodoDate() {
    context.read<TodoDetailBloc>().add(UpdateTodoDate(todoDate));
    DateTime updateStartDt = DateTimeUtils.combineDateAndTime(todoDate, startTargetDt);
    DateTime updateEndDt = DateTimeUtils.combineDateAndTime(todoDate, endTargetDt);

    // 이미 startDt, endDt를 설정한 상태에서 todoDate 를 바꿀 경우, 상태 update
    if(startTargetDt != null && endTargetDt != null) {
      selectStartTime(updateStartDt);
      onUpdateStartTime();
      selectEndTime(updateEndDt);
      onUpdateEndTime();
    } else if(startTargetDt != null) {
      selectStartTime(updateStartDt);
      onUpdateStartTime();
    } else {
      initStartTargetDt();
      initEndTargetDt();
    }
  }

  void onUpdateStartTime() {
    context.read<TodoDetailBloc>().add(UpdateStartTargetDt(startTargetDt));
  }

  void onUpdateEndTime() {
    context.read<TodoDetailBloc>().add(UpdateEndTargetDt(endTargetDt));
  }

  void selectTodoDate(DateTime date) {
    _debouncer(() {
      todoDate = date;
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

  void logDatabasePath() async {
    final path = await getDatabasesPath();
    print('Database Path: $path');
  }

  void showToastMessage(TodoDetailStatus status) {
    switch (status) {
      case TodoDetailStatus.initial:
        break;
      case TodoDetailStatus.modifying:
        break;
      case TodoDetailStatus.deleted:
        break;
      case TodoDetailStatus.error:
        ToastUtils.showToastMessage('Todo 추가 실패');
      case TodoDetailStatus.done:
        ToastUtils.showToastMessage('Todo 추가 완료');
        clear();
        Navigator.pop(context);
      case TodoDetailStatus.timeValueError:
        ToastUtils.showToastMessage('시작 시간은 종료 시간보다 앞서야 합니다');
      case TodoDetailStatus.emptyTitleError:
        ToastUtils.showToastMessage('Todo 제목을 입력해주세요');
    }
  }

  void initStartTargetDt() {
    startTargetDt = null;
  }

  void initEndTargetDt() {
    endTargetDt = null;
  }

  void clear() {
    context.read<TodoDetailBloc>().add(InitTodo());
    context.read<CategoryDetailBloc>().add(InitCategory());
  }

  void setStartTargetDtToEndTargetDt() {
    startTargetDt = endTargetDt;
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
        child: BlocListener<TodoDetailBloc, TodoDetailState>(
          listener: (context, todoState) {
            showToastMessage(todoState.status);
          },
          child: Scaffold(
              backgroundColor: Colors.white,
              body: ResponsiveCenter(child:
                  BlocBuilder<CategoryDetailBloc, CategoryDetailState>(
                      builder: (context, state) {
                return Column(
                  children: [
                    MainAppBar(
                      title: "TODO 등록",
                      backOnTap: () {
                        clear();
                        Navigator.pop(context);
                      },
                      actionText: "완료",
                      actionOnTap: () {
                        onAddTodo();
                      },
                    ),
                    SizedBox(height: 10),
                    // todo textField
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TodoTextField(
                            categoryName: state.title,
                            categoryColor: state.color,
                            controller: _controller)),
                    SizedBox(height: 10),
                    // todo 날짜 설정
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BlocBuilder<TodoDetailBloc, TodoDetailState>(
                          builder: (context, state) {
                        return TodoDatePickerButton(
                          // 화면에 표시되는 날짜
                          buttonText: DateTimeUtils.formatDate(todoDate),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return DatePicker(
                                    title: '날짜',
                                    initialDate: DateTime.now(),
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
                        );
                      }),
                    ),
                    // todo 시작 시간 설정
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: BlocBuilder<TodoDetailBloc, TodoDetailState>(
                          builder: (context, state) {
                        return TodoStartTimePickerButton(
                            buttonText: DateTimeUtils.formatTime(startTargetDt),
                            onTap: () {
                              // 타임피커 오픈 후, onDateTimeChanged 전에 백버튼을 누르면 현재 시간이 선택되도록 한다.
                              selectStartTime(DateTime.now());
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return TimePicker(
                                      initialDateTime: state.todoDate,
                                      onDateTimeChanged: (DateTime value) {
                                        selectStartTime(value);
                                      },
                                      onPressed: () {
                                        onUpdateStartTime();
                                        Navigator.pop(context, true);
                                      },
                                    );
                                  }).then((value) {
                                if (value == null) {
                                  // 백버튼 누르지 않고 외부 터치로 닫은 경우 선택한 값 초기화
                                  initStartTargetDt();
                                }
                              });
                            });
                      }),
                    ),
                    // todo 종료 시간 설정
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BlocBuilder<TodoDetailBloc, TodoDetailState>(
                          builder: (context, state) {
                        return TodoDoneTimePickerButton(
                          buttonText: DateTimeUtils.formatTime(endTargetDt),
                          onTap: () {
                            // 타임피커 오픈 후, onDateTimeChanged 전에 백버튼을 누르면 현재 시간이 선택되도록 한다.
                            selectEndTime(DateTime.now());
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return TimePicker(
                                    initialDateTime: state.todoDate,
                                    onDateTimeChanged: (DateTime value) {
                                      selectEndTime(value);
                                    },
                                    onPressed: () {
                                      onUpdateEndTime();
                                      Navigator.pop(context, true);
                                    },
                                  );
                                }).then((value) {
                              // 백버튼 누르지 않고 외부 터치로 닫은 경우 선택한 값 초기화
                              if (value == null) {
                                initEndTargetDt();
                              }
                            });
                          },
                        );
                      }),
                    ),
                  ],
                );
              }))),
        ));
  }
}
