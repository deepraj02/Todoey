import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            TextField(
              textAlign: TextAlign.center,
              autofocus: false,
            ),
            MaterialButton(
              child: Text(
                "Add Task",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
