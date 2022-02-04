// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/mycustomnsignup.dart';
import 'package:flutter_application_2/sign_up.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

static const appTitle = 'Welcome!';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
      
    );
  }
} 
 class MyHomePage extends StatelessWidget{
   const MyHomePage({Key? key, required this.title}) : super(key:key);
     final String title;
   @override
   Widget build(BuildContext context){
     return Scaffold(
             appBar: AppBar(title: const Text('Create Account'),
        backgroundColor:Colors.yellow[900]
      ),
       body : MyCustomSignUp(),

       
     );
   }
 }