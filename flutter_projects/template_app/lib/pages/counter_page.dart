// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//StatelessWidget doesnot change as long ass the program is running

//StatefulWidget does change as long ass the program is running
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter(){
    //rebulds the widgit every time the setState functionality is called
    setState(() {
      _counter++;
    });
    
  }

  void _decrementCounter(){
    //rebulds the widgit every time the setState functionality is called
    setState(() {
      _counter--;
    });
  }
  
  //UI (User Interface)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text("You pushed the button this many times:"),

            //Counter value
            Text(
              _counter.toString(),
              style: TextStyle( fontSize: 40),
            ),

            //Increment button
            ElevatedButton(onPressed: _incrementCounter, child: Text("Increment")),

            ElevatedButton(onPressed: _decrementCounter, child: Text("Deccrement")),
        ],),
      ),
    );
  }
}