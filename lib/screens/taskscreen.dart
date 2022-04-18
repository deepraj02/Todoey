import 'package:flutter/material.dart';
import 'package:todo_done/screens/add_task_screen.dart';
import 'package:todo_done/widgets/task_list.dart';
import 'package:todo_done/widgets/task_tile.dart';
import '../models/tasks.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
    List<Task> tasks = [
    Task(name: "Create Flutter App"),
    Task(name: "Maintain NodeJS Server"),
    Task(name: "Initialize Firebase"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2025),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
        backgroundColor: Color.fromARGB(255, 70, 75, 88),
        child: Icon(
          Icons.add,
          color: Color(0xFFDEDEE0),
          size: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 35,
                    color: Color.fromARGB(255, 222, 224, 233),
                  ),
                  backgroundColor: Color(0xFF383C46),
                  radius: 30,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFFF0F0F0),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "12 Tasks Completed",
                  style: TextStyle(
                    color: Color.fromARGB(255, 103, 110, 121),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xFF292E3B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TaskList(tasks:tasks),
            ),
          )
        ],
      ),
    );
  }
}
