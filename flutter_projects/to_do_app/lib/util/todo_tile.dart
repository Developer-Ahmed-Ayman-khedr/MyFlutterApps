// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  
  //Tast name
  final String taskName;

  //Task value 
  final bool taskCompleted;

  //Task method
  Function(bool?)? onChanged;

  Function(BuildContext)? deleteFunction;


  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, top: 25.0, left: 25.0),
      child: 
      Container(
        padding:
        EdgeInsets.all(26),
        decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.circular(12)
          ),
      child:
      Row(
        children: [
              //Checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
        
              //Task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: 
                  taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 18,),),
            ],
          ),
        ),
    );
  }
}