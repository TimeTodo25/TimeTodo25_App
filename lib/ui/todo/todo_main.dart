import 'package:flutter/material.dart';

class TodoMain extends StatefulWidget {
  const TodoMain({super.key});

  @override
  State<TodoMain> createState() => _TodoMainState();
}

class _TodoMainState extends State<TodoMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('todo_screen'),),
    );
  }
}