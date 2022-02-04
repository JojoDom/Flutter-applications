// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_2/screens/mycustomform.dart';
import 'package:flutter_application_2/screens/mycustomnsignup.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return 
      Scaffold(
        body: 
          Container(
            decoration : BoxDecoration(
              color: Colors.white
            ),
      height: height,
      width : width,
      child : SingleChildScrollView(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height:100.0),
            Text('GOLD READERS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.yellow[900])),
            Text('CLUB', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.yellow[900])),
            Container(
             height: 250,
             width : width,

             decoration: BoxDecoration(
               color:Colors.white

             ),
             child :Center(
               child: Image.asset('assets/images/gold.png')
             )
            ),

            Text('At Gold readers club,\n we feed curious minds with the best books\n It\'s absolutely free!\n',
               style :TextStyle( fontSize: 20, fontWeight:FontWeight.bold, color: Colors.indigo[900]),
               textAlign: TextAlign.center,
            ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    primary: Colors.yellow[900],
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(1.0),
    ),   
           ),
                onPressed: (){ 
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const MyCustomSignUp()));
              }, child: Text('SignUp', style: TextStyle(color:Colors.white))),
              SizedBox(height:10.0),

           GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const MyCustomForm()),); 
                 },
                 child: Text.rich(
                   TextSpan(
                     text: 'Already a Gold reader? ',
                     children: [
                       TextSpan(text: 'SignIn', style:TextStyle(color:Colors.orange[900])
                     
                   ),
                     ]
                 ),
                 )
               )
          ]
        )
        
      )
       
      
        ) 
        );
  }
}
