import 'package:flutter/material.dart';
import 'package:todo_done/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo_done/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0xFF13151b),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xFF292e3b),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Color(0xFFF0F0F0),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                hintText: 'Enter Task',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              textAlign: TextAlign.center,
              autofocus: false,
            ),
            SizedBox(
              height: 9,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 70),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4D3985),
                  onPrimary: Color.fromARGB(255, 248, 246, 238),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    // <-- Radius
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
