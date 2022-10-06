import 'package:flutter/material.dart';
import '../models/Task_Data.dart';
import 'TaskTail.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxChange: (newValue) {
              taskData.updateTask(taskData.tasks[index]);
            },
            taskDelete: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
      );
    });
  }
}
