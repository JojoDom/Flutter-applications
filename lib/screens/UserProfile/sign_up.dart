// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/UserProfile/sign_up_details.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


//qimport 'package:flutter_application_1/screens/home/home_screen.dart

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}



class _SignUpPageState extends State<SignUpPage>{
  

  @override 
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
  
    return Scaffold(
      appBar: AppBar(
        elevation : 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: height,
        width : width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(kDefaultPadding),
                 child: Text.rich(
                   TextSpan(
                     text: 'Sign in with your socials', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
                   
                 )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children:<Widget>[
                       SignInButton(
                         Buttons.Google,
                         text: "Sign in with Google",
                        onPressed: (){ }),
                        SizedBox(height: kDefaultPadding),

                        SignInButton(
                          Buttons.Facebook,
                          text: "Sign in with Facebook",
                          onPressed : (){}
                        )
                      ]
                    )
                  ),


              SizedBox(height:20.0),
              const Divider(),
              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Center(
                  child:Text("OR",style:TextStyle(color:Colors.black, fontSize:15, fontWeight:FontWeight.bold))
                )
              ),

              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child:
              TextField(
               decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email, color: Colors.orange),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              )),

              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child:
              TextField(
                obscureText:true,
                decoration: InputDecoration(hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off, color:Colors.orange),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              )),

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