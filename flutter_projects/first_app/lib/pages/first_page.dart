// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/profile_page.dart';
import 'package:first_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //An integer to keep track of the selected page to display
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index ){
    setState(() {
      _selectedIndex = index;
    });
  }

  //the pages in the app
  final List _pages = [
    //Home
    HomePage(),

    //Profile
    ProfilePage(),

    //Settings
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page"),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
        //Home
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),

        //Profile
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          ),

        //Settings
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          ),

      ]),
    );
  }
}