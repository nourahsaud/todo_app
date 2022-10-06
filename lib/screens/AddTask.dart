// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addNewTask;

  AddTask(this.addNewTask);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'Add New Task',
          textAlign: TextAlign.center,
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
            addNewTask(newTask);
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
