// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        width : width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(
                 width:width,
                 height: height*0.30,
                 decoration: BoxDecoration(color:  Colors.orangeAccent),

              )

            ],),
        ),
        
        


 ), 
    );
  }

}