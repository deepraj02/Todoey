import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {


  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  void checkBoxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Task1",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Color(0xFFDEDEE0),
        ),
      ),
      trailing: TaskCheckBox(
          checkboxState: isChecked, toggleCheckBox: checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBox;
  TaskCheckBox({required this.checkboxState, required this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: Colors.amberAccent,
      value: checkboxState,
      onChanged: toggleCheckBox,
    );
  }
}
