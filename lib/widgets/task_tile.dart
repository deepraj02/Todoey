import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            fontSize: 19,
            decoration: isChecked ? TextDecoration.lineThrough : null,
            color: Color(0xFFDEDEE0),
          ),
        ),
        trailing: Checkbox(
          checkColor: Color.fromARGB(255, 30, 1, 1),
          side: BorderSide(
            color: Colors.grey,
            // Give your checkbox border a custom width
            width: 2.5,
          ),
          activeColor: Color.fromARGB(255, 255, 255, 255),
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
