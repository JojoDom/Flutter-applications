import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/constants.dart';
import  'components/body.dart';

class MyHomePage extends StatelessWidget  {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }   
      
   AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
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
        // ignore: prefer_const_constructors
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
} 
    
  
  
  

