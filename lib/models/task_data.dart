import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_done/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];
  int get taskCount {
    return tasks.length;
  }
}
