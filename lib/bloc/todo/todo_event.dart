import 'package:equatable/equatable.dart';

sealed class TodoEvent extends Equatable  {
  @override
  List<Object?> get props => [];
}

class AddTodo extends TodoEvent {
  final int idx;
  final int categoryIdx;
  final String userName;
  final String content;
  final DateTime? startStopWtDt;
  final DateTime? endStopWtDt;
  final DateTime? startTargetDt;
  final DateTime? endTargetDt;
  final DateTime? createDt;
  final DateTime? updateDt;
  final DateTime? deleteDt;

  AddTodo({
    required this.content,
    required this.idx,
    required this.categoryIdx,
    required this.userName,
    this.startStopWtDt,
    this.endStopWtDt,
    this.startTargetDt,
    this.endTargetDt,
    this.createDt,
    this.updateDt,
    this.deleteDt,
  });


  @override
  List<Object?> get props => [
    idx,
    categoryIdx,
    content,
    startStopWtDt,
    endStopWtDt,
    startTargetDt,
    endTargetDt,
    createDt,
    updateDt,
    deleteDt,
  ];
}

class RemoveTodo extends TodoEvent {
  final int idx;

  RemoveTodo({required this.idx});
}

class GetTodo extends TodoEvent {


}

class SelectTodoCategory extends TodoEvent {
  final int idx;

  SelectTodoCategory({required this.idx});
}