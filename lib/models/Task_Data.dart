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

  // updating the todo item
  void updateTodo(Task task) {
    
  }

  // Delete task
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
