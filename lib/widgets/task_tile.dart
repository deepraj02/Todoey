import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final void Function() longpressCallback;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
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
