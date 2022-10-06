import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  //final void Function(String?) changeItem;
  final void Function() taskDelete;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      //required this.changeItem,
      required this.taskDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          // color: isImportant ? Color.fromARGB(255, 201, 69, 69) : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //IconButton(onPressed: print('Still Working on it!'), icon: const Icon(Icons.edit)),
          Checkbox(
            activeColor: Color.fromARGB(255, 66, 132, 165),
            value: isChecked,
            onChanged: checkboxChange,),
        ]
      ),
      onLongPress: taskDelete,
    );
  }
}
