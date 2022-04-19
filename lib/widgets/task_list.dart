import 'package:flutter/material.dart';
import 'package:todo_done/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_done/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
                /* setState(() {
                Provider.of<TaskData>(context).tasks[index].toggleDone();
              }); */
              },
              longpressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
