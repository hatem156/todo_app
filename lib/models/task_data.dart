import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "hh"),
    Task(name: "aa"),
    Task(name: "bb"),
  ];

  void addTask(String newtasktitle) {
    tasks.add(Task(name: newtasktitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.donechange();
    notifyListeners();
  }
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
