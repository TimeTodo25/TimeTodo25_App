import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/category_detail/category_detail_bloc.dart';
import 'package:time_todo/bloc/category_detail/category_detail_event.dart';
import 'package:time_todo/bloc/category_detail/category_detail_state.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_event.dart';
import 'package:time_todo/bloc/todo_detail/todo_detail_state.dart';
import 'package:time_todo/bloc/todo_list/todo_list_bloc.dart';
import 'package:time_todo/bloc/todo_list/todo_list_event.dart';
import 'package:time_todo/ui/components/buttons/main_delete_button.dart';
import 'package:time_todo/ui/components/widget/main_alert.dart';
import 'package:time_todo/ui/components/widget/time_picker.dart';
import 'package:time_todo/ui/components/widget/toast_message.dart';
import 'package:time_todo/ui/utils/date_time_utils.dart';
import 'package:time_todo/ui/utils/debouncer.dart';

import '../../../entity/todo/todo_tbl.dart';
import '../../components/widget/date_picker.dart';
import '../../components/widget/main_app_bar.dart';
import '../../components/widget/responsive_center.dart';
import '../widget/todo_date_picker_button.dart';
import '../widget/todo_done_time_picker_button.dart';
import '../widget/todo_start_time_picker_button.dart';
import '../widget/todo_text_field.dart';

@RoutePage(name: 'TodoModifyRoute')
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
    context.read<CategoryDetailBloc>().add(SelectTodoCategory(index: widget.todo.categoryIdx));
    context.read<CategoryDetailBloc>().add(GetCategoryColorAndTitleByIndex(index: widget.todo.categoryIdx));
  }

  void onUpdateTodoDate() {
    context.read<TodoDetailBloc>().add(UpdateTodoDate(todoDate));
  }

  void onUpdateStartTime() {
    context.read<TodoDetailBloc>().add(UpdateStartTargetDt(startTargetDt));
  }

  void onUpdateEndTime() {
    context.read<TodoDetailBloc>().add(UpdateEndTargetDt(endTargetDt));
  }

  int onUpdateCategory() {
    return context.read<CategoryDetailBloc>().state.index ?? widget.todo.categoryIdx;
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
    final int newCategoryIdx = onUpdateCategory();
    final newTodo = widget.todo.copyWith(
      categoryIdx: newCategoryIdx,
      content: _controller.text,
      startTargetDt: startTargetDt,
      endTargetDt: endTargetDt,
      todoDate: todoDate,
      updateDt: DateTime.now(),
    );

    context.read<TodoDetailBloc>().add(ModifyTodo(newTodo));
  }

  void showToastMessage(TodoDetailStatus status) {
    switch (status) {
      case TodoDetailStatus.initial:
        break;
      case TodoDetailStatus.deleted:
        ToastUtils.showToastMessage('Todo 삭제 완료');
        Navigator.pop(context);
        Navigator.pop(context);
      case TodoDetailStatus.error:
        ToastUtils.showToastMessage('Todo 추가 실패');
      case TodoDetailStatus.success:
        break;
      case TodoDetailStatus.timeValueError:
        clearEndDt();
        ToastUtils.showToastMessage('시작 시간은 종료 시간보다 앞서야 합니다');
      case TodoDetailStatus.emptyTitleError:
        ToastUtils.showToastMessage('Todo 제목을 입력해주세요');
      case TodoDetailStatus.updated:
        ToastUtils.showToastMessage('Todo 수정 완료');
        clearAll();
        Navigator.pop(context);
      case TodoDetailStatus.added:
        break;
    }
  }

  void _fetchUpdatedTodoList() {
    context.read<TodoListBloc>().add(GetTodosByCategory(categoryIdx: widget.todo.categoryIdx, dateTime: todoDate));
  }

  void onDeleteTodo() {
    context.read<TodoDetailBloc>().add(DeleteTodo(
        idx: widget.todo.idx ?? 0, syncIdx: widget.todo.syncIdx ?? 0));
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
            },
            onNegativePressed: () {
              Navigator.pop(context);
            },
          );
        });
  }

  void clearAll() {
    context.read<TodoDetailBloc>().add(InitTodo());
    context.read<CategoryDetailBloc>().add(InitCategory());
  }

  void clearEndDt() {
    endTargetDt = null;
    context.read<TodoDetailBloc>().add(UpdateEndTargetDt(null));
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
        body: BlocListener<TodoDetailBloc, TodoDetailState>(
          listener: (context, state) {
            showToastMessage(state.status);
            if(state.status == TodoDetailStatus.updated) {
              _fetchUpdatedTodoList();
            } else if(state.status == TodoDetailStatus.deleted) {
              _fetchUpdatedTodoList();
            }
          },
          child: ResponsiveCenter(
            child: Column(
              children: [
                MainAppBar(
                  title: "TODO 수정",
                  backOnTap: () {
                    clearAll();
                    Navigator.pop(context);
                  },
                  actionText: "완료",
                  actionOnTap: () {
                    onModifyTodo();
                  },
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocSelector<CategoryDetailBloc, CategoryDetailState, Map<String, dynamic>>(
                      selector: (state) => {
                        'title': state.title,
                        'color': state.color,
                      },
                      builder: (context, categoryData) {
                        return TodoTextField(
                            categoryName: categoryData['title'],
                            categoryColor: categoryData['color'],
                            controller: _controller
                        );
                      }
                  ),
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
                      // 타임피커 오픈 후, onDateTimeChanged 전에 백버튼을 누르면 현재 시간이 선택되도록 한다.
                      selectStartTime(DateTime.now());

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
                      // 타임피커 오픈 후, onDateTimeChanged 전에 백버튼을 누르면 현재 시간이 선택되도록 한다.
                      selectEndTime(DateTime.now());
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
            ),
          ),
        ),
      ),
    );
  }
}
