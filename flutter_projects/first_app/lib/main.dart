// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/first_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/profile_page.dart';
import 'package:first_app/pages/second_page.dart';
import 'package:first_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/homepage':(context) => HomePage(),
        '/settingspage':(context) => SettingsPage(),
        '/profilepage':(context) => ProfilePage(),
      },
    );
  }
}