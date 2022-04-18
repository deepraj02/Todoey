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
            SizedBox(
              height: 12,
            ),
            TextField(
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
                onPressed: () {},
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4D3985),
                  onPrimary: Color.fromARGB(255, 212, 207, 191),
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
