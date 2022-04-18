import 'package:flutter/material.dart';
import 'package:todo_done/widgets/task_tile.dart';
import '../models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
