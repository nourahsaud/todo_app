// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:todo_app/screens/AddTask.dart';
import '../models/Task_Data.dart';
import '../widgets/TasksList.dart';
import 'package:provider/provider.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTask((newTask) {
                  // setState(() {
                  //   tasks.add(Task(name: newTask));
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        backgroundColor: Color.fromARGB(255, 201, 69, 69),
        child: Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 66, 132, 165),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.check,
                size: 40,
                color: Color.fromARGB(255, 245, 245, 245),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'MY 2DO LIST',
                style: TextStyle(
                  color: Color.fromARGB(255, 245, 245, 245),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            // tasks.length > 0
            //     ? 'You\'ve ${tasks.length} Tasks 2Do !'
            //     : 'You List Is Empty !',
            'You\'ve ${Provider.of<TaskData>(context).tasks.length} Tasks 2Do !',
            style: TextStyle(
              color: Color.fromARGB(255, 245, 245, 245),
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Add New Task
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ]),
      ),
    );
  }
}
