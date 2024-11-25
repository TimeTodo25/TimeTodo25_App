abstract class TodoEvent  {

}

class AddTodo extends TodoEvent {
  final String content;
  final int idx;
  final int categoryIdx;
  final String userName;

  AddTodo({
    required this.content,
    required this.idx,
    required this.categoryIdx,
    required this.userName});
}

class RemoveTodo extends TodoEvent {

}

