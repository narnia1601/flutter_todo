import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List _tasks = [
    Task(
      name: 'Buy milk',
    ),
    Task(
      name: 'Buy eggs',
    ),
    Task(
      name: 'Buy bread',
    ),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    Task task = Task(name: newTask);
    _tasks.add(
      task,
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
