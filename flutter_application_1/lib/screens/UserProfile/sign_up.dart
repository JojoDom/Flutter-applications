// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/UserProfile/sign_up_details.dart';
//qimport 'package:flutter_application_1/screens/home/home_screen.dart


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
                 height: height*0.45,
                 decoration: BoxDecoration(
                   color:  Colors.orangeAccent,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(40.0),
                     bottomRight: Radius.circular(40.0)
                   ),
                   
                   ),
                child:Center(child: Text('GHANA MALL', style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,
                color:Colors.white,) ,  
              ))),
              SizedBox(height:30.0),
              

              SizedBox(height:30.0),
              TextField(
               decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              ),
              SizedBox(height:20.0),
              TextField(
                obscureText:true,
                decoration: InputDecoration(hintText: 'Password',suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              ),
               ElevatedButton(
                child: Text('Login', style: TextStyle(color:Colors.white),),
                style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    primary: Colors.deepOrange
           ),
                 onPressed: (){
                 Navigator.pop(context);
                  
                 },
                  ),
               SizedBox(height: 20.0,),
               GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpDetails()),); 
                 },
                 child: Text.rich(
                   TextSpan(
                     text: 'Don\'t have an account? ',
                     children: [
                       TextSpan(text: 'SignUp', style:TextStyle(color:Color(0xffEE7B23))
                     
                   ),
                     ]
                 ),
                 )
               )
            ],),
        ),
        
        


 ), 
    
    
    
    );
  }

}