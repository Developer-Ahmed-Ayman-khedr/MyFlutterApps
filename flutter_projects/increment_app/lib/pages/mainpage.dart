// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage extends StatefulWidget {
   Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int counter = 0;

void _incrementCounter(){
  
  setState(() {
      counter++;
    });
}

void _decrementCounter(){
  setState(() {
      counter--;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        centerTitle: true,
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
           //couter display
           Expanded(
            flex: 2,             
            child:
             Text('$counter'),
          ),
          //increment button
           Expanded(
            flex: 1,
            child:
            
            GestureDetector(
              
              onTap: _incrementCounter,
              onLongPress: _incrementCounter,
              child: Container(
                
                color: Colors.deepPurple[200],
                child: Center(child: Text("Increment"),),
              ),  
          ),
          ),
          //deccrement button
           Expanded(
            flex: 1,
            child:
            GestureDetector(
              onTap: _decrementCounter,
              onLongPress: _decrementCounter,
              child: Container(
                color: Colors.deepPurple[200],
                child: Center(child: Text("Decrement"),),
              ),
                     
          ),
          ),
          ]
        ),
      ),
    );
  }
}