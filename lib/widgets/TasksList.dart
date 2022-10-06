import 'package:flutter/material.dart';
import '../models/Task.dart';
import 'TaskTail.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxChange: (newValue) {
            setState(() {
              widget.tasks[index].doneChange();
            });
          },
        );
      },
    );
  }
}
