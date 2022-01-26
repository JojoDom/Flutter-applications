// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/UserProfile/sign_up.dart';
import  'package:flutter_application_1/screens/home/body.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage ({Key? key, required this.title}) : super (key: key);

final String title;

  @override
  Widget build(BuildContext context) {
return Scaffold (
      appBar: AppBar(title: Text(title),
      backgroundColor : Colors.orange,
        actions: <Widget>[
          IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
         IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        ElevatedButton(
           
           style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    primary: Colors.orangeAccent
           ),
          child: Text('LOGIN',
          style: TextStyle(color: Colors.white, fontSize:10)
          ),
          onPressed: ()  {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpPage()),);
          },
           )
        ]
      ),
      body: Body(),
      
 drawer: Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
        const DrawerHeader(
        decoration: BoxDecoration(
        color: Colors.orange
          ),
        child: Text('CATEGORIES'),
         ),
      ListTile(
       title:  Text('Women Fashion'), 
       onTap:() {
         Navigator.pop(context);
       },
          ),
       ListTile(
       title:  Text('Men Fashion'),
       onTap :() {
         Navigator.pop(context);
       },
        ),
       ListTile(
       title:  Text('Kids Fashion'),
       onTap :() {
         Navigator.pop(context);
       },
       ),    
       ListTile(
       title:  Text('Skin Care'),
       onTap :() {
         Navigator.pop(context);
       },
        ),
       ListTile(
       title:  Text('Hair Care'),
       onTap :() {
         Navigator.pop(context);
       },
         ),
      ListTile(
       title:  Text('Home Decor'),
       onTap :() {
         Navigator.pop(context);
       },
        ),
      ListTile(
       title:  Text('Kitchen'),
       onTap :() {
         Navigator.pop(context);
       },
        ),

       ]

     )
    ));
  }
}