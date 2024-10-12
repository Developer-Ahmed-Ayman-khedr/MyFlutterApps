// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDopage extends StatefulWidget {
  const ToDopage({super.key});

  @override
  State<ToDopage> createState() => _ToDopageState();
}

class _ToDopageState extends State<ToDopage> {

  //Text editing controller to access what the user wrote
  TextEditingController myController = TextEditingController();
  
  //Graeting user message variable
  String greatingmessage = "";

  //greet usr method
  void greetuser(){
    String userName = myController.text;
    setState(() {
      greatingmessage = "Hello, " + userName;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Greating user message
              Text(greatingmessage),

              //Text field to get the user input
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name..",
                ),
              ),
              //button
              ElevatedButton(onPressed: greetuser, child: Text("tap!")),
            ],
          ),
        ),
      ),
    );
  }
}