import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _mybox = Hive.box('mybox');

  // run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Make a tutorial", false],
      ["Do exercise", false],
    ];
  }

  // load data from the database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
