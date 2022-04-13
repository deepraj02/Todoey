import 'package:flutter/material.dart';
import 'package:todo_done/task_tile.dart';
class TaskLists extends StatelessWidget {
  const TaskLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

