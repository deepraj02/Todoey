import 'package:flutter/material.dart';
import 'package:todo_done/models/task_data.dart';
import 'package:todo_done/screens/taskscreen.dart';
import 'package:provider/provider.dart';
import 'package:todo_done/models/task_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
