import 'package:flutter/material.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  // updating the check box
  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  // Delete task
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
