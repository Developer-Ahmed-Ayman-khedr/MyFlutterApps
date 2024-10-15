// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tile.dart';
import 'package:to_do_app/util/dialog_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
//text controller
final _controller = TextEditingController();

  //List of todo tasks
  List todolist = [
    ["Make the todo app", false],
    ["Make the Shopping app", false]
  ];
  //checkBox was tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }
  //saveNewTask
  void saveNewTask(){
    setState(() {
      todolist.add([ _controller.text, false ]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //Create a new task
  void createNewTask(){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: Navigator.of(context).pop,
        );
    },);
  }
  //delete Task
  void deleteTask(int index){
    setState(() {
      todolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Text("TO DO"),titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todolist[index][0], 
            taskCompleted: todolist[index][1], 
            onChanged: (value) => checkBoxChanged(value,index),
            deleteFunction: (context) => deleteTask(index),
            );
        },
      ),
    );
  }
}