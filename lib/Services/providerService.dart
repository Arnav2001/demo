

import 'package:flutter/material.dart';

import '../Model/taskModel.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [];
  final List<String> _summaryList = [];
  final List<String> names = [
    'Play Football',
    'Study for 2hr',
    'Go To Gym',
    'Eat Healthy Food',
    'Take 8hr Sleep',
    'Walk 5km Daily',
    'Meditate For 15 min',
    'Follow Skin Care'
  ];
  TaskProvider() {

    for (int i = 0; i < names.length; i++) {
      _tasks.add(Task(title: names[i]));
    }
  }

  List<Task> get tasks => _tasks;
  List<String> get summaryList => _summaryList;

  void toggleTaskMarkedForRemoval(int index) {
    _tasks[index].setMarkedForRemoval(!_tasks[index].isMarkedForRemoval);
    notifyListeners();
  }

  void addOrRemove(String value, String title){
    if(value == 'add'){
      summaryList.add(title);
    }else{
      summaryList.remove(title);
    }
  }
}