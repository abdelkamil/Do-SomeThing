import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'export_models.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Learn Flutter"),
    Task(name: "Learn Spring Boot"),
    Task(name: "Learn Angular"),
  ];

  int get countList {
    return tasks.length;
  }

  // pour protection
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(String newTask) {
    Task task = new Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task t) {
    t.toggleDone();
    notifyListeners();
  }

  void deletTask(Task t) {
    _tasks.remove(t);
    notifyListeners();
  }
}
