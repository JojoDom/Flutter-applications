// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
static const appTitle = 'Ghana Mall' ;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : appTitle,
      theme: ThemeData(
        primarySwatch:Colors.green
      ),
      home: MyHomePage(title: appTitle),
    );
  }  
}




