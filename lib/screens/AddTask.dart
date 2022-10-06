import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Task_Data.dart';

class AddTask extends StatelessWidget {
  final Function addNewTask;

  AddTask(this.addNewTask);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        // ignore: prefer_const_constructors
        Text(
          'Add New Task',
          textAlign: TextAlign.center,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 66, 132, 165),
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTask = newText;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTask!);
            Navigator.pop(context);
          },
          child: Text('Add'),
          style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 245, 245, 245),
            backgroundColor: Color.fromARGB(255, 201, 69, 69),
          ),
        ),
      ]),
    );
  }
}
