import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:time_todo/bloc/category/category_bloc.dart';
import 'package:time_todo/bloc/todo/todo_bloc.dart';
import 'package:time_todo/bloc/todo/todo_event.dart';
import 'package:time_todo/bloc/todo/todo_state.dart';
import 'package:time_todo/ui/components/widget/date_picker.dart';
import 'package:time_todo/ui/components/widget/time_picker.dart';
import 'package:time_todo/ui/components/widget/toast_message.dart';
import 'package:time_todo/ui/todo/widget/todo_done_time_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_start_time_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_date_picker_button.dart';
import 'package:time_todo/ui/todo/widget/todo_text_field.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';
import '../../../bloc/category/category_event.dart';
import '../../../bloc/category/category_state.dart';
import '../../../entity/todo/todo_tbl.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';

class TodoAddScreen extends StatefulWidget {
  final String categoryName;
  final Color categoryColor;

  const TodoAddScreen({
    super.key,
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
  Color? categoryColor;
  String categoryTitle ='';
  
  int categoryIdx = 0;

  @override
  void initState() {
    super.initState();
    initCategory();
  }
  
  void initCategory() {
    context.read<CategoryBloc>().add(
        GetCategoryInfo(color: widget.categoryColor, title: widget.categoryName));
  }

  void onAddTodo() {
    final Todo newTodo = Todo(
        categoryIdx: categoryIdx,
        status: 1,
        userName: 'test',
        createDt: DateTime.now(),
        content: _controller.text,
        startTargetDt: startTargetDt,
        endTargetDt: endTargetDt,
        todoDate: todoDate
    );

    context.read<TodoBloc>().add(AddTodo(newTodo));

    _controller.clear();
    // db 경로 찍어보기...
    logDatabasePath();
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

  void logDatabasePath() async {
    final path = await getDatabasesPath();
    print('Database Path: $path');
  }

  void showToastMessage(TodoStatus status) {
    if(status == TodoStatus.timeValueError) {
      ToastUtils.showToastMessage('시작 시간은 종료 시간보다 앞서야 합니다');
    } else if(status == TodoStatus.success) {
      ToastUtils.showToastMessage('Todo 추가 완료');
      Navigator.pop(context);
    } else if(status == TodoStatus.failure) {
      ToastUtils.showToastMessage('Todo 추가 실패');
    } else if(status == TodoStatus.emptyTitleError) {
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
    context.read<TodoBloc>().add(InitTodo());
    context.read<CategoryBloc>().add(InitCategory());
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
        child: BlocListener<TodoBloc, TodoState>(
          listener: (context, todoState) {
            showToastMessage(todoState.status);
          },
          child: Scaffold(
              backgroundColor: Colors.white,
              body: ResponsiveCenter(child:
                  BlocBuilder<CategoryBloc, CategoryState>(
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
                        clear();
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
                      child: BlocBuilder<TodoBloc, TodoState>(
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
                      child: BlocBuilder<TodoBloc, TodoState>(
                          builder: (context, state) {
                        return TodoStartTimePickerButton(
                            buttonText: DateTimeUtils.formatTime(startTargetDt),
                            onTap: () {
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
                                if(value == null) {
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
                      child: BlocBuilder<TodoBloc, TodoState>(
                        builder: (context, state) {
                          return TodoDoneTimePickerButton(
                            buttonText: DateTimeUtils.formatTime(endTargetDt),
                            onTap: () {
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
                                    if(value == null) {
                                      initEndTargetDt();
                                    }
                              })
                              ;
                            },
                          );
                        }
                      ),
                    ),
                  ],
                );
              }))),
        ));
  }
}
