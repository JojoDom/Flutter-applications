// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class SignUpDetails extends StatelessWidget {
  const SignUpDetails ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(backgroundColor:Colors.orange,title: Text('Sign Up')
      ),
      body: Container(
        height: height,
        width : width,
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                
              SizedBox(height:100.0),
              TextField(
               decoration: InputDecoration(
                 
                  hintText: 'First Name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              ),
      
              SizedBox(height:50.0),
              TextField(
               decoration: InputDecoration(
                  hintText: 'Surname',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              ),

              SizedBox(height:50.0),

              TextField(
               decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              ),
              SizedBox(height:50.0),
              TextField(
                obscureText:true,
                decoration: InputDecoration(hintText: 'Password',suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(height:50.0),
              TextField(
                 obscureText:true,
                decoration: InputDecoration(hintText: ' Confirm Password',suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              ),
               ElevatedButton(
                child: Text('SignUp', style: TextStyle(color:Colors.white),),
                style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    primary: Colors.deepOrange
           ),
                 onPressed: (){
                   Navigator.pop(context);
                 },
                  ),
               SizedBox(height: 20.0,), 
               

            ],),
        ),
        
        


 ), 
      
      
    );
  }
}
